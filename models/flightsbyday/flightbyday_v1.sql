select 
    day,
    flights,
    from {{ source('forecast', 'plant1_ext') }}