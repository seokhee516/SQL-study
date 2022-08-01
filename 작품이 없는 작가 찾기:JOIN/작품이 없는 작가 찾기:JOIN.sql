select
  a.artist_id,
  a.name
from
  artists as a
  left join artworks_artists as aa ON a.artist_id = aa.artist_id
where
  a.death_year is not null
  and aa.artwork_id is null
