create table if not exists GenreInfo (
GenreID SERIAL primary key,
Genre VARCHAR(40) not null
);

create table if not exists MusicianInfo (
MusicianID SERIAL primary key,
Musician VARCHAR(40) not null
);

create table if not exists AlbumsInfo (
AlbumsID SERIAL primary key,
Albums VARCHAR(40) not null,
Year DATE not null
);

create table if not exists TrackInfo (
TrackID SERIAL primary key,
Duration INTEGER not null,
AlbumsID INTEGER primary key references AlbumsInfo(AlbumsID),
Track text not null
);

create table if not exists CollectionInfo (
CollectionID SERIAL primary key,
Collection VARCHAR(40) not null,
Year DATE not null
);

create table if not exists Musician_Genre (
MusicianID INTEGER not null references MusicianInfo(MusicianID),
GenreID INTEGER not null references GenreInfo(GenreID),
constraint pk primary key (MusicianID, GenreID)
);

create table if not exists Musician_Albums (
MusicianID INTEGER not null references MusicianInfo(MusicianID),
AlbumsID INTEGER not null references AlbumsInfo(AlbumsID),
constraint pk1 primary key (MusicianID, AlbumsID)
);

create table if not exists Track_Collection (
TrackID INTEGER references TrackInfo(TrackID),
CollectionID INTEGER references CollectionInfo(CollectionID),
constraint pk2 primary key (TrackID, CollectionID)
);


select track, duration
from trackinfo
where duration = (select max(duration) from trackinfo)
