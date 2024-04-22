SELECT tblAuthor.AuthorName, tblEpisode.Title, tblEpisode.EpisodeType
FROM   tblAuthor INNER JOIN
             tblEpisode ON tblAuthor.AuthorId = tblEpisode.AuthorId
WHERE (EpisodeType LIKE N'%special%')
ORDER BY tblEpisode.Title