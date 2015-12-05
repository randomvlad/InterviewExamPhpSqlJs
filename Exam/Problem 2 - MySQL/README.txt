Problem 2 - MYSQL: Facebook Ads

Create a schema and load mysql dump file 'table_data_dump.sql' into it (ignore the SQL warnings).

After reviewing the created tables and their data. Please answer the following questions. Include your queries in 'answers.sql' file.

1) Write a query to show the total number of clicks, impressions and likes for Facebook Ad 'Budlight'.

2) Write a query to show the total number of unique Facebook users reached for Facebook Ad 'Budlight'. Note: A user counts as being reached, when he has been served at least one Ad impression.

3) Write a query to list all Facebook Ads that have not received any traffic (no clicks, no likes and no impressions).

4) Oops! `fb_ad_events_corrupt` table got messed up and now some values in some columns contain invalid data. Luckily you were able to restore it from a very recent backup (see table: `fb_ad_events`) and verified the primary key column 'id' is still valid in `fb_ad_events_corrupt`. Write a query to delete all invalid rows from `fb_ad_events_corrupt` which differ from backup table `fb_ad_events`.

5) It's been a good day for business. You are told all live Facebook Ads had their flight time extended by exactly 1 month and 1 day. Write a query to update `end_date` column for all Facebook ads that as of *now* have not ended and expired yet.
