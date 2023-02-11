use DoctorWho
GO
create function fnCompanions (@EpisodeId int)
returns varchar(max)
as 
begin

	Declare @val Varchar(MAX)

	Select @val = COALESCE(@val + ', ' + companion.CompanionName, companion.CompanionName) 
	From tblCompanion companion 
	inner join tblEpisodeCompanion ec
	on ec.CompanionId = companion.CompanionId
	where ec.EpisodeId = @EpisodeId
	return (Select @val as companions)
	
end
GO

select dbo.fnCompanions(3)