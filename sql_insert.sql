insert into genreinfo(genreid, genre)
values(1, 'Rock');

insert into genreinfo(genreid, genre)
values(2, 'Pop');

insert into genreinfo(genreid, genre)
values(3, 'Blues');

insert into genreinfo(genreid, genre)
values(4, 'RnB');

insert into musicianinfo(musicianid, musician)
values(1, 'Bob');

insert into musicianinfo(musicianid, musician)
values(2, 'Lock');

insert into musicianinfo(musicianid, musician)
values(3, 'Str');

insert into musicianinfo(musicianid, musician)
values(4, 'Plax');

insert into albumsinfo(albumsid, albums, year)
values(1, 'Perfect Nightmare', '2019-01-01');

insert into albumsinfo(albumsid, albums, year)
values(2, 'What Is fan', '2020-01-01');

insert into albumsinfo(albumsid, albums, year)
values(3, 'Easy Driving', '2021-01-01');

insert into trackinfo (trackid, duration, albumsid, track)
values(1, 120, 1, 'Teenage wave');

insert into trackinfo (trackid, duration, albumsid, track)
values(2, 240, 2, 'crazy power');

insert into trackinfo (trackid, duration, albumsid, track)
values(3, 150, 3, 'All My Ballad');

insert into trackinfo (trackid, duration, albumsid, track)
values(4, 155, 1, 'No my');

insert into trackinfo (trackid, duration, albumsid, track)
values(5, 135, 2, 'the town road');

insert into trackinfo (trackid, duration, albumsid, track)
values(6, 260, 3, 'you are my song');

insert into collectioninfo(collectionid, collection, year)
values(1,'play Goodbyes', '2019-01-01');

insert into collectioninfo(collectionid, collection, year)
values(2,'play apollo', '2020-01-01');

insert into collectioninfo(collectionid, collection, year)
values(3,'chill place', '2021-01-01');

insert into collectioninfo(collectionid, collection, year)
values(4,'relax stars', '2022-01-01');

insert into musician_genre(musicianid, genreid)
values(1, 1);

insert into musician_genre(musicianid, genreid)
values(2, 2);

insert into musician_genre(musicianid, genreid)
values(3, 3);

insert into musician_genre(musicianid, genreid)
values(4, 4);

insert into musician_albums(musicianid, albumsid)
values(1, 1);

insert into musician_albums(musicianid, albumsid)
values(2, 1);

insert into musician_albums(musicianid, albumsid)
values(3, 2);

insert into musician_albums(musicianid, albumsid)
values(4, 3);

insert into track_collection(trackid, collectionid)
values(1, 1);

insert into track_collection(trackid, collectionid)
values(2, 2);

insert into track_collection(trackid, collectionid)
values(3, 3);

insert into track_collection(trackid, collectionid)
values(4, 4);

insert into track_collection(trackid, collectionid)
values(5, 1);

insert into track_collection(trackid, collectionid)
values(6, 2);