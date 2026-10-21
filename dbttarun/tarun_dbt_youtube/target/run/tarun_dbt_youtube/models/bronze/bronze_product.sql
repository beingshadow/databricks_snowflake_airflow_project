
  
  
  
  create or replace view `dbt_tutorial_dev`.`bronze`.`bronze_product`
  
  as (
    select 
* 
from 
`dbt_tutorial_dev`.`source`.`dim_product`
  )
