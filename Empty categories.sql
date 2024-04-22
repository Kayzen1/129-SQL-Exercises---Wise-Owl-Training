select e.EventName, e.EventDate, c.CategoryName 
from tblEvent as e
inner join tblCategory as c
on e.CategoryID = c.CategoryID
order by e.EventDate DESC

select e.EventName, e.EventDate, c.CategoryName 
from tblEvent as e
full outer join tblCategory as c
on e.CategoryID = c.CategoryID
order by e.EventDate DESC

select c.CategoryName 
from tblEvent as e
full outer join tblCategory as c
on e.CategoryID = c.CategoryID
where e.EventName is null
order by e.EventDate DESC
