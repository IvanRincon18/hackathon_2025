select 
    prediction_date_key as prediction_date,
    yhat as current,
    yhat_lower as lowest_case,
    yhat_upper as greatest_case
from {{ source('forecast', 'predictions')}}