declare @Walessize int
set @Walessize = 20761

select 
	c.Country, 
	c.KmSquared, 
	(c.KmSquared - c.KmSquared % 20761) / 20761 AS WalesUnits,
	c.KmSquared % @Walessize as AreaLeftOver, 
	CASE	
		WHEN c.KmSquared < 20761 THEN 'Smaller than Wales'
		ELSE CAST((c.KmSquared - c.KmSquared % 20761) / 20761 as varchar(100)) +
			' x Wales plus ' +
			CAST(c.KmSquared % 20761 AS varchar(100)) +
			' sq. km.'
	END as WalesComparison
from [dbo].[CountriesByArea] c
ORDER BY ABS(@Walessize-c.KmSquared) ASC