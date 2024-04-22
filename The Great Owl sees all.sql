select EventName, 
format(EventDate, 'dd/MM/yyyy') as UsingFormat, 
CONVERT(char(10),e.EventDate,103) AS UsingConvert
from tblEvent as e
where year(e.EventDate) = 1978
ORDER By e.EventDate