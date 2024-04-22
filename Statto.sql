select 
	count(*) as [Number of events], 
	max(EventDate) as [Last date], 
	min(EventDate) as [First date]
from tblEvent