select 
* 
FROM
{{ source('source', 'dim_customer') }}
