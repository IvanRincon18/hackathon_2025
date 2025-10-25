select flights 
from {{ source('forecast', 'plant2_ext')}}
where flights >= 15