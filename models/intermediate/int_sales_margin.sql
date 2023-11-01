select
    sales.*
    , products.purchase_price
    , sales.quantity * cast(products.purchase_price as FLOAT64) as purchase_cost
    , ROUND((sales.revenue - (CAST(products.purchase_price AS FLOAT64) * sales.quantity)),2) as margin 
from {{ ref('stg_raw__sales')}} as sales 
JOIN {{ ref('stg_raw__product') }} as products
 on sales.products_id = products.products_id





