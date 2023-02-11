create table tblEpisode(
	EpisodeId int identity(1,1) primary key,
	SeriresNumber int,
	EpisodeType varchar(20),
	Title varchar(100),
	EpisodeDate date,
	AuthorId int,
	DoctorId int,
	Notes nvarchar(1000) NULL
)

create table tblEnemy(
	EnemyId int identity(1,1) primary key,
	EnemyName nvarchar(30),
	Description nvarchar(500)
)

create table tblEpisodeEnemy(
	EpisodeEnemyId int identity(1,1) primary key,
	EpisodeId int NOT NULL,
	EnemyId int Not Null,
	foreign key (EpisodeId) references tblEpisode (EpisodeId),
	foreign key (EnemyId) references tblEnemy (EnemyId)
)

create table tblAuthor(
	AuthorId int identity(1,1) primary key,
	AuthorName nvarchar(20)
)

alter table tblEpisode
add foreign key (AuthorId) references tblAuthor (AuthorId)

create table tblDoctor(
	DoctorId int identity(1,1) primary key,
	DoctorNumber int,
	DoctorName nvarchar(100),
	BirthDate date,
	FirstEpisodeDate date,
	LastEpisodeDate date
)

alter table tblEpisode
add foreign key (DoctorId) references tblDoctor (DoctorId)

create table tblCompanion(
	CompanionId int identity(1,1) primary key,
	CompanionName nvarchar(100),
	WhoPlayed nvarchar(100)
)

create table tblEpisodeCompanion(
	EpisodeCompanionId int identity(1,1) primary key,
	EpisodeId int not null,
	CompanionId int not null,
	foreign key (EpisodeId) references tblEpisode (EpisodeId),
	foreign key (CompanionId) references tblCompanion (CompanionId)
)