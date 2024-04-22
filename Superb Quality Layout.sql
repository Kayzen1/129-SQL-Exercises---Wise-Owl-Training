SELECT tblCountry.CountryName, tblEvent.EventName, tblEvent.EventDate
FROM   tblCountry INNER JOIN
             tblEvent ON tblCountry.CountryID = tblEvent.CountryID
ORDER BY tblEvent.EventDate