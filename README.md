# Interview Exam for PHP, MySQL and Javascript

A long time ago in a galaxy far, far away ...

... I was tasked with hiring an entry/mid-level LAMP developer to work on my team. I cooked up a take home exam, that all candidates would receive very early in the interview process to establish basic competence. Exam consists of three relatively straight forward problems testing PHP, MySQL and Javascript.

***

## Problem 1 - PHP: User Campaign Report

Process data from two different sources and generate a summary user campaign performance report.

Requirements:
- report on every user provided
- sort the report by profit from highest to lowest
- profit is defined as: revenue - cost

Implement the generate function in [UserCampaignReport.class.php](Exam/Problem%201%20-%20PHP/UserCampaignReport.class.php). Use PHP version 5.4 or higher.

To run the report, execute: php [run_user_report.php](Exam/Problem%201%20-%20PHP/run_user_report.php)

***

## Problem 2 - MySQL: Facebook Ads

Create a schema and load mysql dump file [table_data_dump.sql](Exam/Problem%202%20-%20MySQL/table_data_dump.sql) into it (ignore the SQL warnings).

After reviewing the created tables and their data. Please answer the following questions. Include your queries in [answers.sql](Exam/Problem%202%20-%20MySQL/answers.sql) file.

1. Write a query to show the total number of clicks, impressions and likes for Facebook Ad 'Budlight'.
2. Write a query to show the total number of unique Facebook users reached for Facebook Ad 'Budlight'. Note: A user counts as being reached, when he has been served at least one Ad impression.
3. Write a query to list all Facebook Ads that have not received any traffic (no clicks, no likes and no impressions).
4. Oops! `fb_ad_events_corrupt` table got messed up and now some values in some columns contain invalid data. Luckily you were able to restore it from a very recent backup (see table: `fb_ad_events`) and verified the primary key column 'id' is still valid in `fb_ad_events_corrupt`. Write a query to delete all invalid rows from `fb_ad_events_corrupt` which differ from backup table `fb_ad_events`.
5. It's been a good day for business. You are told all live Facebook Ads had their flight time extended by exactly 1 month and 1 day. Write a query to update `end_date` column for all Facebook ads that as of *now* have not ended and expired yet.

***

## Problem 3 - Javascript: Draw Blocks

Place file [draw_blocks.php](Exam/Problem%203%20-%20Javascript/draw_blocks.php) on your local web server (with support for PHP 5.4 or higher).

Study the provided block configuration in file, transfer them to the client side and draw via Javascript in the browser.

Block Drawing Requirements:
- blocks are just rectangular shapes that flow from top to bottom of the page (standard web page flow). Each block should be drawn on its own line. 
- default width of a block is 100 pixels
- default height of a block is 100 pixels
- if a block configuration specifies a color, set the block's background color to such
- if a block configuration specifies a border, the border should be 1 pixel, solid and black in color
- if a block specifies a picture, set the block's background to it

Additional special requirement: color-shifter
- blocks configured with type "color-shifter" can be clicked to change their color
- color change is based on a random selection from 5 colors: red, yellow, orange, blue, lime
- same color can't be randomly chosen consecutively. Example: if a block is colored red, clicking must change it to a color other than red.

***

## Solutions

There are numerous correct solutions to the problems. Here is my take on them. 

1. PHP: User Campaign Report - [UserCampaignReport.class.php](Exam/Problem%201%20-%20PHP%20Solution/UserCampaignReport.class.php)
2. MySQL: Facebook Ads - [answers.sql](Exam/Problem%202%20-%20MySQL%20Solution/answers.sql)
3. Javascript: Draw Blocks - [draw_blocks.php](Exam/Problem%203%20-%20Javascript%20Solution/draw_blocks.php)