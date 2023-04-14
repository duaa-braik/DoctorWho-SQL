use DoctorWho
GO
create view viewEpisodes as (
select E.Title, author.AuthorName, doctor.DoctorName, dbo.fnCompanions(E.EpisodeId) as Companions, dbo.fnEnemies(E.EpisodeId) as Enemies
from tblAuthor author
inner join tblEpisode E
on E.AuthorId = author.AuthorId
inner join tblDoctor doctor
on doctor.DoctorId = E.DoctorId
)
GO
select * from viewEpisodes