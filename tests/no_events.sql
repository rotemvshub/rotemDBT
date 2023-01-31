with athletes as 
(
    select * from  {{ ref('stg_athletes')}}
),

events as (

  select * from  {{ ref('stg_athlete_events')}}

)

select a.athlete_id,count(*) 
from  athletes a left join  events b 
group by a.athlete_id
having count(*) = 0
