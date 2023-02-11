use DoctorWho

update tblEpisode
set Title = CONCAT(Title, '_CANCELLED')
WHERE DoctorId is Null