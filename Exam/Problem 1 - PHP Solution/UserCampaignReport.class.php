<?php

class UserCampaignReport {

  /**
   * @return array of arrays with keys: user, numberCampaigns, numberAds, profit. Data is sorted by profit in descending order.
   */
  public function generate(array $users, array $campaignsData, array $adLaunchEvents) {
    $userCampaigns = $this->getCampaignsDataByUserId($campaignsData);
    $adCounts = $this->getAdCountsByCampaignId($adLaunchEvents);

    $report = [];
    foreach($users as $userId => $userName) {
      $campaigns = isset($userCampaigns[$userId]) ? $userCampaigns[$userId] : [];

      $numberAds = 0;
      $profit = 0;

      foreach($campaigns as $row) {
        $campaignId = $row['campaignId'];
        $numberCampaignAds = isset($adCounts[$campaignId]) ? $adCounts[$campaignId] : 0;

        $numberAds += $numberCampaignAds;
        $profit += $row['profit'];
      }

      $report[] = [
        "user" => $userName,
        "numberCampaigns" => count($campaigns),
        "numberAds" => $numberAds,
        "profit" => $profit
      ];
    }

    usort($report, function($row1, $row2) {
      return $row2['profit'] - $row1['profit'];
    });

    return $report;
  }

  private function getCampaignsDataByUserId(array $campaignsData) {
    $grouped = [];

    foreach($campaignsData as $row) {
      list($id, $name, $cost, $revenue, $userId) = $row;

      if(!isset($grouped[$userId])) {
        $grouped[$userId] = [];
      }

      $grouped[$userId][] = [
        'campaignId' => $id,
        'campaignName' => $name,
        'cost' => $cost,
        'revenue' => $revenue,
        'profit' => ($revenue - $cost),
        'userId' => $userId
      ];
    }

    return $grouped;
  }

  private function getAdCountsByCampaignId(array $adLaunchEvents) {
    $adCounts = [];

    foreach($adLaunchEvents as $row) {
      list($eventId, $campaignId, $name, $date) = $row;

      if(!isset($adCounts[$campaignId])) {
        $adCounts[$campaignId] = 0;
      }

      $adCounts[$campaignId]++;
    }

    return $adCounts;
  }
}