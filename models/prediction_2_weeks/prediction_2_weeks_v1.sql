select
    cast(prediction_date_key as int64) as prediction_date,
    cast(round(yhat) as int64)         as real_case,
    cast(round(yhat_lower) as int64)   as lowest_case,
    cast(round(yhat_upper) as int64)   as greatest_case
from {{ source('forecast', 'predictions') }}
order by prediction_date_key desc
