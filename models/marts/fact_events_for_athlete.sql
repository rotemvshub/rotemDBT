{{ config(
materialized='table'
) }}


with athlete as (

select * from {{ ref('stg_athletes')}}

),

events as (

select * from {{ ref('stg_athlete_events')}}

)

select a.*, b.event,b.medal
from athlete a left join  events b
on a.athlete_id = b.athlete_id