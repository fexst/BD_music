select g.genre, count(mg.musicianid) from musician_genre mg 
left join genreinfo g on g.genreid = mg.genreid
group by g.genre;

select count(t.track) from trackinfo t 
join albumsinfo a on t.albumsid = a.albumsid
where a."year" between '2019-01-01' and '2020-12-31';

select a.albums, avg(t.duration) from albumsinfo a 
join trackinfo t on a.albumsid = t.albumsid 
group by a.albums;

select musician 
from musicianinfo
where musician not in (
select musician 
from musicianinfo m
join musician_albums ma on m.musicianid = ma.musicianid
join albumsinfo a on a.albumsid = ma.albumsid
where a."year" between '2020-01-01' and '2020-12-31'
);

select collection from track_collection tc 
join collectioninfo c on c.collectionid = tc.collectionid
join trackinfo t on t.trackid = tc.trackid
join albumsinfo a on t.albumsid = a.albumsid
join musician_albums ma on a.albumsid = ma.albumsid
join musicianinfo m on m.musicianid = ma.musicianid
where musician like 'Bob';
