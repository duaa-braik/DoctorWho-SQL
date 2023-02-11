use DoctorWho

GO
create function fnEnemies (@EpisodeId int)
returns table as

	return (
		select e.EnemyName, ee.EpisodeId
		from tblEpisodeEnemy ee
		inner join tblEnemy e
		on e.EnemyId = ee.EnemyId
		where ee.EpisodeId = @EpisodeId
	);
GO

select * from dbo.fnEnemies(2)