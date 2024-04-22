select *
from tblCountry as c
full outer join tblEvent as e
on c.CountryID = e.CountryID
where e.EventID is null