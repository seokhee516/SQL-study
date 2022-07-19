SELECT distinct(athlete_id)
FROM records as r
  LEFT OUTER JOIN events as e
  ON r.event_id = e.id
WHERE e.sport = 'Golf'
