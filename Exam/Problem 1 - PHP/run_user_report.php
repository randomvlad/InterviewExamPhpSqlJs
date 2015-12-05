<?php

require_once('UserCampaignReport.class.php');

$users = getUsers();
$campaignsData = getCampaignsData();
$adLaunchEvents = getAdLaunchEvents();

$report = new UserCampaignReport();
$result = $report->generate($users, $campaignsData, $adLaunchEvents); // TODO: implement me

foreach($result as $row) {
  echo "User: {$row['user']} " .
      "\t# Campaigns: {$row['numberCampaigns']}; " .
      "\t# Ads Launched: {$row['numberAds']}; " .
      "\t$ Profit: " . number_format($row['profit']/100, 2) . PHP_EOL;
}

/**
 * @return array map of user id to user name
 */
function getUsers() {
  return [
    1 => 'Joe',
    2 => 'Bob',
    3 => 'Kate',
    4 => 'Alex',
    5 => 'Mary'
  ];
}

/**
 * @return array of indexed arrays:
 *  [0] = campaign id
 *  [1] = campaign name
 *  [2] = cost in US cents
 *  [3] = revenue in US cents
 *  [4] = campaign owner user id
 */
function getCampaignsData() {
  return [
    [ 1, 'Budlight', 243000, 378930, 1 ],
    [ 2, 'Yellowtail-Wine', 56000, 89000, 5 ],
    [ 3, 'Tempurpedic', 1000, 810, 1 ],
    [ 4, 'Skittles', 13020, 785, 3 ],
    [ 5, 'KitKat', 6000, 3500, 5 ],
    [ 6, 'Target', 5900, 5400, 5 ],
    [ 7, 'Heinz-Ketchup', 0, 0, 4 ]
  ];
}

/**
 * @return array of indexed arrays:
 *  [0] = event id
 *  [1] = campaign id
 *  [2] = ad name
 *  [3] = launch date in format YYYY-MM-DD
 */
function getAdLaunchEvents() {
  return [
    [ 1, 1, 'Budlight-Ad-1', '2013-05-06' ],
    [ 2, 1, 'Budlight-Ad-2', '2013-05-07' ],
    [ 3, 1, 'Budlight-Ad-3', '2013-06-01' ],
    [ 4, 6, 'KitKat-Ad-1', '2013-07-03' ],
    [ 5, 6, 'Target-Ad-1', '2013-07-04' ],
    [ 6, 3, 'Tempurpedic-Ad-1', '2013-07-05' ],
    [ 7, 3, 'Tempurpedic-Ad-2', '2013-07-06' ],
    [ 8, 3, 'Tempurpedic-Ad-3', '2013-07-08' ],
    [ 9, 3, 'Tempurpedic-Ad-4', '2013-07-08' ],
    [ 10, 4, 'Skittles-Ad-1', '2013-08-14' ],
    [ 11, 4, 'Skittles-Ad-2', '2013-08-15' ],
    [ 12, 2, 'Yellowtail-Wine-Ad-1', '2013-08-15']
  ];
}