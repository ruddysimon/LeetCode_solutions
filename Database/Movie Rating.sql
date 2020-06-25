# Find the name of the people who they have rated the most 
select people_names as "results"
from
    (select u.name as "people_names", 
            count(mv.rating) as "rating_counts"
    from users as u
    left join movie_rating as mv
    on u.user_id = mv.user_id
    group by mv.user_id
    order by count(mv.rating) desc, u.name asc
    limit 1) s1

union all

# Find the movie names with the highest average rating in Feb 2020
select movie_names as "results"
from
    (select m.title as "movie_names",
            avg(mv.rating) as "movies_avg"
    from movie_rating as mv
    right join movies as m
    on m.movie_id = mv.movie_id and MONTH(mv.created_at) = "02"
    group by m.title
    order by movies_avg desc, m.title asc
    limit 1) s2