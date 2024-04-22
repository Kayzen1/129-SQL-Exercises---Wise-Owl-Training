SELECT
	e.EventName,
	FORMAT(e.EventDate,'dd MMM yyyy') AS 'Event date',
	DateDiff(day,e.EventDate,'19980923') AS 'Days offset',
	ABS(
		DateDiff(day,e.EventDate,'19980923')
	) AS 'Days difference'
FROM
	tblEvent AS e
ORDER BY
	'Days difference' ASC