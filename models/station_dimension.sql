WITH BIKE AS (

    select
*
    FROM {{ source('demo', 'BIKE') }}
    LIMIT 10

)