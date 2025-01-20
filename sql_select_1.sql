select track, duration
from trackinfo
where duration = (select max(duration) from trackinfo);

select track
from trackinfo
where duration >= 210;

select collection
from collectioninfo
where "year" between '2018-01-01' and '2020-12-31';

select musician
from musicianinfo
where musician not like ' ';

-- 1-й вариант
select track
from trackinfo
where track ilike 'my %' 
or track ilike '% my'
or track ilike '% my %'
or track ilike 'my'
or track ilike 'мой %'
or track ilike '% мой'
or track ilike '% мой %'
or track ilike 'мой';

-- 2-й вариант
SELECT track
FROM trackinfo
WHERE track ~* '(^|\s)(my|мой)($|\s)';
