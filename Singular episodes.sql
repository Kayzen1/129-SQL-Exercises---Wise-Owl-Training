/*Create view vwEpisodeCompanion as*/

select top 5 * from [tblEpisode]
select top 5 * from tblCompanion
select top 5 * from tblEnemy

-- show the episodes featuring more than one companion
CREATE VIEW vwEpisodeCompanion  AS
SELECT e.EpisodeId, e.Title, COUNT(*) as NumberEpisodes
FROM tblEpisode AS e
INNER JOIN tblEpisodeCompanion AS ec 
ON e.EpisodeId = ec.EpisodeId
GROUP BY e.EpisodeId, e.Title
HAVING count(*) = 1


-- now do the same for episodes having more than one enemy
Create VIEW vwEpisodeEnemy AS
SELECT e.EpisodeId, e.Title, COUNT(*) as NumberEpisodes
FROM tblEpisode AS e
INNER JOIN tblEpisodeEnemy AS ec 
ON e.EpisodeId = ec.EpisodeId
GROUP BY e.EpisodeId, e.Title
HAVING count(*) = 1

GO

Create VIEW vwEpisodeSummary AS
SELECT e.EpisodeId, e.Title
FROM tblEpisode AS e
LEFT OUTER JOIN vwEpisodeEnemy AS en 
ON e.EpisodeId = en.EpisodeId
LEFT OUTER JOIN vwEpisodeCompanion AS c 
ON e.EpisodeId = c.EpisodeId
WHERE en.EpisodeId is null and c.EpisodeId is null

SELECT * FROM vwEpisodeSummary ORDER BY Title