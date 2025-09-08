SELECT
id AS customer_id,
name AS customer_name,
email,
country
from {{ source('raw_data', 'customers') }}

