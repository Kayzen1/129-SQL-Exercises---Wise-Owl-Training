select EventName, len(EventName) as [Length of name]
from tblEvent
order by len(EventName)