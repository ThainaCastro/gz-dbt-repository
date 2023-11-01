select
    finance.*
    , campaing.ads_cost
    , campaing.ads_impression
    , campaing.ads_clicks
    , finance.operational_margin - campaing.ads_cost AS ads_margin
from {{ref ('finance_days')}} as finance
JOIN {{ref ('int_campaigns_day')}} as campaing
    using(date_date)