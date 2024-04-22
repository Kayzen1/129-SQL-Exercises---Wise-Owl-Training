SELECT
	e.EventName,
	DateName(weekday,e.EventDate) + ' ' + 
	DateName(day,e.EventDate) + 
	CASE 
		WHEN DatePart(day,e.EventDate) IN (1,21,31) THEN 'st'
		WHEN DatePart(day,e.EventDate) IN (2,22)  THEN 'nd'
		WHEN DatePart(day,e.EventDate) IN (3,23)  THEN 'rd'
		ELSE 'th'
	END 
	+ ' ' + DATENAME(month,e.EventDate) + ' ' + DATENAME(year,e.EventDate) AS 'Full date'
FROM
	tblEvent AS e
ORDER BY
	e.EventDate ASC