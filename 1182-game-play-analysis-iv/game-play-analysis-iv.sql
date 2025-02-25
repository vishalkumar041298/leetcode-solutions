
select round(count(a1.player_id)/(select count(distinct(player_id)) from Activity), 2) as fraction from Activity a1 left join
( select * from Activity
where (player_id, event_date) in (select player_id, min(event_date) from Activity group by player_id)
) a2  on (a1.player_id=a2.player_id) where datediff(a1.event_date, a2.event_date) =1