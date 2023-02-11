use DoctorWho

delete from tblCompanion
where CompanionId not in 
(select distinct CompanionId from tblEpisodeCompanion)