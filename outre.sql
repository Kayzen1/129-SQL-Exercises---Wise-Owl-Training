SELECT c.CompanionName
FROM tblCompanion AS c
LEFT JOIN tblEpisodeCompanion AS ec 
ON c.CompanionId = ec.CompanionId
WHERE ec.EpisodeCompanionId is null