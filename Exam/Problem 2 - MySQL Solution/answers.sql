-- Answer queries for Problem 2

-- Question #1
SELECT event_type, count(*) AS total 
FROM fb_ad_events f
WHERE fb_ad_id = 1
GROUP BY event_type;

-- Question #2
SELECT COUNT(*) AS user_reach
FROM (
	SELECT fb_user_id 
	FROM fb_ad_events f
	WHERE f.fb_ad_id = 1 AND f.event_type = 'IMPRESSION'
	GROUP BY f.fb_user_id 
) a;

-- Question #3
SELECT name
FROM fb_ads a
LEFT JOIN fb_ad_events e ON a.id = e.fb_ad_id
WHERE e.id IS NULL;

-- Question #4
SELECT e.*, ec.*
FROM fb_ad_events e
JOIN fb_ad_events_corrupt ec ON e.id = ec.id
WHERE e.fb_user_id <> ec.fb_user_id OR e.fb_ad_id <> ec.fb_ad_id OR e.event_type <> ec.event_type OR e.datetime <> ec.datetime;

-- Question #5
UPDATE fb_ads
SET end_date = end_date + INTERVAL 1 MONTH + INTERVAL 1 DAY
WHERE end_date >= NOW();
