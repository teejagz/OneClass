select count(s.user_id) as subscribed ,count(distinct v.user_id) as voted ,count(distinct e.user_id) as enrolled
from public.subscriptions as s 
left join public.votes as v on s.user_id=v.user_id
left join public.enrollments as e on e.user_id=s.user_id