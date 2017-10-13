select count(e.user_id) as document_count,count(distinct c.name) as courses,count(distinct d.name) as departments,s.name as schools from public.courses as c 
inner join public.departments as d on c.department_id=d.id
inner join public.schools as s on s.id=d.school_id  
right join public.documents as e on e.course_id= c.id 
group by s.name
