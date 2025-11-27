{% macro function1(x) %}

CASE WHEN TRY_TO_TIMESTAMP_NTZ({{x}}) < CURRENT_DATE THEN 'PAST'
ELSE 'FUTURE' END

{% endmacro %}

{% macro get_season(x) %}

CASE WHEN 
MONTH(TRY_TO_TIMESTAMP_NTZ({{x}})) IN (12,1,2)
THEN 'WINTER'
WHEN MONTH(TRY_TO_TIMESTAMP_NTZ({{x}})) IN (3,4,5)
THEN 'SPRING'
WHEN MONTH(TRY_TO_TIMESTAMP_NTZ({{x}})) IN (6,7,8)
THEN 'SUMMER'
ELSE 'AUTUMN'
END 
{% endmacro %}