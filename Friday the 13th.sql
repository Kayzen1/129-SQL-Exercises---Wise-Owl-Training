select 
	EventName, 
	EventDate, 
	DateName(weekday,e.EventDate) AS 'Day of week',
	day(e.EventDate) AS 'Day number'
from tblEvent as e
WHERE
	DateName(weekday,e.EventDate) = 'Friday' and
	day(e.EventDate) = 13