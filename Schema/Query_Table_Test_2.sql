-- Run a SQL query to show country name, dates, total cases, and mobility data
SELECT 
	agm.country, 
	agm.dates, 
	i.total_cases, 
	agm.apple_mobility_percent, 
	agm.google_mobility_percent
FROM infections as i
INNER JOIN apple_google_mobility as agm 
ON i.country = agm.country
AND i.dates = agm.dates
ORDER BY agm.country asc;