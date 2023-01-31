with athletes as (
/*select * from training.rotemlab.athletes*/
select * from {{ source('athletes_db', 'athletes') }}

)

select *,current_date() as upd_date from athletes