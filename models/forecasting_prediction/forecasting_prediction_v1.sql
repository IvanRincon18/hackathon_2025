{{ config(
    materialized='table',
    dataset='forecast',                 
    alias='forecasting_prediction'  
) }}

select
    prediction_date_key as prediction_date,   
    yhat               as actual,
    yhat_lower         as lowest_case,
    yhat_upper         as greatest_case
from {{ source("forecast", "predictions") }}