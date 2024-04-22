SELECT
	e.EventName + ' (category ' + CAST(e.CategoryID AS varchar(100)) + ')' AS 'Event (category)',
	e.EventDate
FROM
	tblEvent AS e
WHERE e.CountryID = 1