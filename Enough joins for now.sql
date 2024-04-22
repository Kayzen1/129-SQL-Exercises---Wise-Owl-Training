select top 5 * from tblEpisode
select top 5 * from tblAuthor

SELECT
	ep.Title, 
	en.EnemyName,
	a.AuthorName
FROM
	tblAuthor AS a
	INNER JOIN tblEpisode AS ep ON a.AuthorId = ep.AuthorId
	INNER JOIN tblEpisodeEnemy AS ee ON ep.EpisodeId = ee.EpisodeId
	INNER JOIN tblEnemy AS en ON ee.EnemyId = en.EnemyId
WHERE
	en.EnemyName like '%Dalek%'