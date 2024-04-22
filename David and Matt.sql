SELECT d.DoctorName, e.Title
from tblDoctor d
inner join tblEpisode e
on d.DoctorId = e.DoctorId
where year(e.EpisodeDate) = 2010