select id, count(id) as num from (
select requester_id as id from RequestAccepted
Union ALL
select accepter_id  as id from RequestAccepted
) x group by id order by num desc limit 1