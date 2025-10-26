select
    prediction_date_key as preditiction_day,
    yhat as actual,
    yhat_lower as lowest_case,
    yhat_upper as greatest_case
from {{ source("forecast", "predictions") }}
