with full_table as (SELECT * from bike_share_yr_0
UNION
SELECT * from bike_share_yr_1)

SELECT dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price - COGS*riders as profit
from full_table a
left join cost_table b
on a.yr=b.yr

