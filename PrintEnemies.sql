use DoctorWho

GO
create function fnEnemies (@EpisodeId int)
returns varchar(max)
as begin
	
	Declare @val Varchar(MAX)

	select @val = COALESCE(@val + ', ' + enemy.EnemyName, enemy.EnemyName) 
	from tblEpisodeEnemy ee
	inner join tblEnemy enemy
	on enemy.EnemyId = ee.EnemyId
	where ee.EpisodeId = @EpisodeId
	
	return (select @val as enemies)
end
GO