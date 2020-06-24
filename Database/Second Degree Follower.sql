select f1.followee as "follower", count(distinct f1.follower) as "num"
from follow as f1
where followee IN (select follower from follow)
group by followee