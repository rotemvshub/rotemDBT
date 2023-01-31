with athletes_events as (

/*select * from training.rotemlab.athlete_events*/
select * from {{ source('athletes_db', 'athlete_events') }}
)

select *,current_date() as upd_date  
from athletes_events