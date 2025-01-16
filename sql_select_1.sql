select track, duration
from trackinfo
where duration = (select max(duration) from trackinfo);

select track
from trackinfo
where duration > 210;

select collection
from collectioninfo
where "year" between '2018-01-01' and '2020-12-31';

select musician
from musicianinfo
where musician not like ' ';

select track
from trackinfo
where track like '%my%' or track like '%мой%';