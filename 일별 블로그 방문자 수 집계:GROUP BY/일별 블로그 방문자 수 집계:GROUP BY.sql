select
  event_date_kst as dt,
  count(distinct user_pseudo_id) as users
from
  ga
group by
  event_date_kst
having
  '2021-08-02' <= event_date_kst
  and event_date_kst <= '2021-08-09'
