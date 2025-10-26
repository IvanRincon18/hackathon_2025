{{ config(
    materialized='table',
    schema='forecast',                 
    alias='forecasting_prediction'  
) }}

select
    prediction_date_key as prediction_date,   -- OJO: corregí el typo
    yhat               as actual,
    yhat_lower         as lowest_case,
    yhat_upper         as greatest_case
from {{ source("forecast", "predictions") }}