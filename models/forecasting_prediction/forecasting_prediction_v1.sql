select
    prediction_date_key as predicition_date,
    cast(round(yhat) as int64) as actual_number,
    cast(round(yhat_lower) as int64) as lowest_case,
    cast(round(yhat_upper) as int64) as greatest_case
from {{ source("forecast", "predictions") }}
