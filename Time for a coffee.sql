SELECT
	a.AuthorName, 
	e.Title,
	d.DoctorName,
	en.EnemyName,
	Len(a.AuthorName) + len(e.Title) + 
	len(d.DoctorName) + len(en.EnemyName) AS 'Total length'
FROM
	tblAuthor AS a
	INNER JOIN tblEpisode as e on a.AuthorId = e.AuthorId
	INNER JOIN tblDoctor as d on e.DoctorId = d.DoctorId
	INNER JOIN tblEpisodeEnemy as ee on e.EpisodeId = ee.EpisodeId
	INNER JOIN tblEnemy as en on ee.EnemyId = en.EnemyId
WHERE
	Len(a.AuthorName) + len(e.Title) + len(d.DoctorName) + len(en.EnemyName) < 40
ORDER BY 
	e.SeriesNumber,
	e.EpisodeNumber