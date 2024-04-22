SELECT
	ev.EventName,
	ev.EventDate,
	cy.CountryName,
	cn.ContinentName
FROM
	tblContinent AS cn
	INNER JOIN tblCountry as cy
		ON cn.ContinentID = cy.ContinentID
	INNER JOIN tblEvent as ev
		ON cy.CountryID = ev.CountryID
WHERE
	cn.ContinentName = 'Antarctic' or cy.CountryName = 'Russia'