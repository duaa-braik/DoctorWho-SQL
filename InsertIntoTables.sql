use DoctorWho

alter table tblEnemy
alter Column Description nvarchar(2000)

insert into tblEnemy (EnemyName, Description)
values ('The Master', 'An old friend, and an old foe, The Master has faced the Doctor throughout several lifecycles. They have been reborn after seemingly dying for good (more than once) and changed far beyond the mustachioed origins of Roger Delgado, to the enigmatic psychopathy of Michelle Gomez. He (or she, depending on the regeneration) is very much the Moriarty to the Doctor''s Sherlock Holmes. For all the horrific aliens and monsters that he faces, the Doctor''s greatest foe will always be his twisted Time Lord counterpart.

Legendary actor Derek Jacobi even portrayed Professor Yana, The Master’s humanized personality, and the performance was as electric as the exposed cables with which he murdered Chantho. ')

insert into tblEnemy (EnemyName, Description)
values ('The Daleks', 'Of course, the Daleks are a perennial threat to our dual-hearted hero, and are the only villain so far to have faced every version of the Doctor. Their iconic screeching voice and plunger of death weapons have stood the test of time and made them into one of the most iconic alien races in sci-fi.

First appearing in 1963, writer Terry Nation portrayed the Daleks as a Nazi-like threat: violent, pitiless, and utterly merciless. Classic Daleks have found themselves stumbling over a simple set of stairs, but now they can levitate, devastate, and exterminate!')

insert into tblEnemy (EnemyName, Description)
values ('The Cybermen', 'First introduced way back in 1966, they were a part of the First Doctor William Hartnell''s final serial. Admittedly, they were made of a bit of tumble Dryer tubing stuck on a helmet, but they’ve become a hard hitting adversary over the years. The Cybermen seek to conquer the galaxy and "upgrade" all of its inhabitants, turning them into more soulless Cybermen. 

Trooping through universes, across the void, in and out of time, these classic villains have been steam powered, giants and arthropods, and yet never fully defeated. ')

insert into tblEnemy (EnemyName, Description)
values ('The Weeping Angels', 'One of the most frightening Doctor Who villains on this list, at least for younger viewers, are the Weeping Angels. These menacing looking statue-like humanoids can kill people with a single touch and can only move when they''re not being looked at, including when people blink. It''s a horrifying play on the concept of quantum physics and observations (think Schrodinger''s box, only it kills you, not the cat).

Mercifully, the angels would "kill" their victims by sending them back in time to live out their lives peacefully while being dead in the present day. The terrifying statues would then feed on the energy of their victims to keep themselves alive.

Appearing for the first time back in 2007 and returning a few times since, these frightening statues gave some younger Doctor Who fans a fright that wont soon be forgotten. We suspect the same can be said for a few adults too.')

insert into tblEnemy (EnemyName, Description)
values ('Sontarans', 'This race of warrior potatoes are a threat much bigger than their stature suggests. Round, brown, and great with butter, the Sontarans aren’t to be messed with. First appearing in 1973 against Doctor 3, Jon Pertwee, and Sarah-Jane Smith, the Sontarans have gone on to be a constant threat, and even a companion in Strax.  As the Doctor points out, they also have a fantastically thematic weakness, a port on the back of their armor that means they must always face their foes head on.

Fun fact - Linx, the first Sontaran we meet, is played by Kevin Lindsay. Lindsay pronounced the race as son-TAR-an on set, and despite director Alan Bromly correcting him to stress the SON, Lindsay simply said “since I''m from the place, I should know."')

insert into tblAuthor (AuthorName)
values ('Ben Aaronovitch')

insert into tblAuthor (AuthorName)
values ('Douglas Adams')--Maxine Alderton

insert into tblAuthor (AuthorName)
values ('Maxine Alderton')

insert into tblAuthor (AuthorName)
values ('Norman Ashby')

insert into tblDoctor (DoctorNumber, DoctorName, FirstEpisodeDate, LastEpisodeDate)
values (1, 'William Hartnell', '19661123', '19661029')

insert into tblDoctor (DoctorNumber, DoctorName, FirstEpisodeDate, LastEpisodeDate)
values (2, 'Patrick Troughton', '19661123', '19690621')

insert into tblDoctor (DoctorNumber, DoctorName, FirstEpisodeDate, LastEpisodeDate)
values (3, 'Jon Pertwee', '19700103', '19740608')

insert into tblDoctor (DoctorNumber, DoctorName, FirstEpisodeDate, LastEpisodeDate)
values (4, 'Tom Baker', '19741228', '19810321')

insert into tblDoctor (DoctorNumber, DoctorName, FirstEpisodeDate, LastEpisodeDate)
values (5, 'Peter Davison', '19820104', '19840316')

insert into tblCompanion (CompanionName, WhoPlayed)
values ('River Song', 'Alex Kingston')

insert into tblCompanion (CompanionName, WhoPlayed)
values ('Nardole', 'Matt Lucas')

insert into tblCompanion (CompanionName, WhoPlayed)
values ('Yasmin Khan', 'Mandip Gill')

insert into tblCompanion (CompanionName, WhoPlayed)
values ('Wilfred Mott', 'Bernard Cribbins')

insert into tblCompanion (CompanionName, WhoPlayed)
values ('Jo Grant', 'Katy Manning')

alter table tblEpisode
add EpisodeNumber int

alter table tblEpisode
add Check(EpisodeType in ('episode', 'special'))

insert into tblEpisode
(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId)
values (1, 2, 'episode', 'The End of the World', '20050402', 23, 9)

insert into tblEpisode
(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId)
values (1, 6, 'episode', 'Dalek', '20050430', 29, 9)

insert into tblEpisode
(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId)
values (1, 10, 'episode', 'The Doctor Dances', '20050525', 30, 9)

insert into tblEpisode
(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId)
values (2, 4, 'episode', 'The Girl in the Fireplace', '20060506', 30, 10)

insert into tblEpisode
(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId)
values (2, 9, 'episode', 'The Satan Pit', '20060610', 32, 10)

insert into tblEpisode
(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId)
values (3, 2, 'episode', 'Mission to the Unknown', '19651009', '35', null)


