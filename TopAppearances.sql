use DoctorWho
GO
create procedure spSummariseEpisodes
as 

	select distinct top(3) companion.CompanionName, count(*) over(partition by companion.CompanionName) as Appearance
	from tblCompanion companion
	inner join tblEpisodeCompanion ec
	on companion.CompanionId = ec.CompanionId
	order by Appearance desc

	select distinct top(3) enemy.EnemyName, count(*) over(partition by enemy.EnemyName) as Appearance
	from tblEnemy enemy
	inner join tblEpisodeEnemy ec
	on enemy.EnemyId = ec.EnemyId
	order by Appearance desc
GO

exec spSummariseEpisodes