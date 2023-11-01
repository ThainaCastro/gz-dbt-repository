select *
FROM {{ref ('stg_raw__adwords')}} as adwords
UNION ALL
select *
FROM {{ref ('stg_raw__bing')}} as ring
UNION ALL
select *
FROM {{ref ('stg_raw__criteo')}} as criteo
UNION ALL
select *
FROM {{ref ('stg_raw__facebook')}} as facebook