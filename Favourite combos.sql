select a.AuthorName, d.DoctorName, count(e.EpisodeId) as Episodes
from tblAuthor as a
left join tblEpisode as e
on a.AuthorId = e.AuthorId
left join tblDoctor as d
on e.DoctorId = d.DoctorId
group by a.AuthorName, d.DoctorName
having count(e.EpisodeId) > 5
order by count(e.EpisodeId) DESC