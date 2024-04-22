select EventName, EventDate, CHARINDEX('this', EventDetails, 1) as thisPosition, CHARINDEX('that', EventDetails, 1) as thatPosition,CHARINDEX('that',e.EventDetails,1) - CHARINDEX('this',e.EventDetails,1) as Offset
from tblEvent as e
where
	CHARINDEX('this',e.EventDetails,1) > 0 and
		CHARINDEX('that',e.EventDetails,1) > 0 and
		(
			CHARINDEX('that',e.EventDetails,1) - CHARINDEX('this',e.EventDetails,1) > 0
		)