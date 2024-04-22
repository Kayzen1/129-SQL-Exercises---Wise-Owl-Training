select EventName, EventDate
from tblEvent
where EventName like '% Teletubbies%' 
or EventName like 'Teletubbies %' 
or EventName like '% Teletubbies %' 
or EventName like 'Pandy %'
or EventName like '% Pandy %'
or EventName like '% Pandy'