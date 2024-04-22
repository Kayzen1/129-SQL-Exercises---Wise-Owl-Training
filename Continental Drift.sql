select CountryName,
case 
	when CountryID in (1,3) then 'Eurasia' 
	when CountryID in (5,6) then 'Americas' 
	when CountryID in (2,4) then 'Somewhere hot' 
	when CountryID = 7 then 'Somewhere cold' 
	else 'Somewhere else'
end as CountryLocation
from tblCountry
order by CountryLocation DESC