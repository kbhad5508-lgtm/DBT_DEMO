WITH CTE AS (
select
STARTED_AT
from 
{{ source('demo', 'bike') }}
)

SELECT * FROM CTE;