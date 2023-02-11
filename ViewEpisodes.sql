use DoctorWho
declare @id as int = 0
select E.Title, a.AuthorName, d.DoctorName, Enemies.EnemyName, Companions.CompanionName
from tblAuthor a
inner join tblEpisode E
on E.AuthorId = a.AuthorId
inner join tblDoctor d
on d.DoctorId = E.DoctorId
inner join 
	dbo.fnEnemies(E.EpisodeId) as Enemies
on E.EpisodeId = Enemies.EpisodeId
inner join 
	(select c.CompanionName, ec.EpisodeId
	from tblCompanion c
	inner join tblEpisodeCompanion ec
	on ec.CompanionId = c.CompanionId) as Companions
on E.EpisodeId = Companions.EpisodeId

--replace the 2 subqueries by the functions

