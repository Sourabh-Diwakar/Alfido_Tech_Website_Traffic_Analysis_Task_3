SELECT * FROM web_traffic

--What is the total number of events in the dataset?

SELECT COUNT(EVENT) AS	"Total_Events"
FROM Web_traffic

--How many pageviews, clicks, and previews occurred overall?

SELECT COUNT(EVENT) AS "Total Click"
FROM web_traffic
WHERE event IN ('Click')

SELECT COUNT(EVENT) AS "Total Pageviews"
FROM web_traffic
WHERE event IN ('Pageview')

SELECT COUNT(EVENT) AS "Total Previews"
FROM web_traffic
WHERE event IN ('Preview')

--Which track has the highest number of pageviews?

SELECT TOP 1 track, COUNT(event) AS "Numbers of pageview"
FROM web_traffic
WHERE EVENT IN ('pageview')
group by track
order by COUNT(event) desc

--Which tracks make up the top 10 by total events?

SELECT TOP 10 track, COUNT(event) AS "Numbers of Events"
FROM web_traffic
group by track
order by COUNT(event) desc

--Which countries generate the most events?

SELECT TOP 5 country, COUNT(event) AS "Numbers of Events"
FROM web_traffic
group by country
order by COUNT(event) desc

--Which city has the highest number of pageviews?

SELECT TOP 1 country, COUNT(event) AS "Numbers of pageview"
FROM web_traffic
WHERE EVENT IN ('pageview')
group by country
order by COUNT(event) desc

--How many events have Unknown as the city, and which country do they belong to?


SELECT country,COUNT(event) AS total_events
FROM web_traffic
WHERE city = 'Unknown'
GROUP BY country

--Which artist has the highest total events?

SELECT TOP 1  artist, count(event) AS total_events
FROM web_traffic
GROUP BY artist
ORDER BY count(event) DESC

--Which track has the highest number of pageviews?

SELECT TOP 1  track, count(event) AS total_Pageviews
FROM web_traffic
where event IN ('pageview')
GROUP BY track
ORDER BY count(event) DESC

--Which tracks make up the top 10 by total events?

SELECT TOP 10  track, count(event) AS total_Events
FROM web_traffic
GROUP BY track
ORDER BY count(event) DESC

--Which link ID gets the most clicks?

SELECT TOP 1 linkid, COUNT(event) AS "Total_Clicks"
FROM Web_traffic
WHERE event IN ('Click')
GROUP BY linkid
ORDER BY COUNT(event) DESC

--How many records have a missing ISRC?

SELECT COUNT(*) AS missing_isrc_count
FROM web_traffic
WHERE ISRC IS NULL 

--Which artist has the highest number of events with a missing ISRC?

SELECT TOP 1 artist, COUNT(*) AS missing_isrc_count
FROM web_traffic
WHERE ISRC IS NULL 
GROUP BY artist
ORDER BY COUNT(*) DESC






 



















