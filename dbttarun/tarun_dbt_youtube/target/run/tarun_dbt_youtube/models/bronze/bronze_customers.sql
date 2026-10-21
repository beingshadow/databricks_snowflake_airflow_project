
  
    
        create or replace table `dbt_tutorial_dev`.`bronze`.`bronze_customers`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      select 
* 
FROM
`dbt_tutorial_dev`.`source`.`dim_customer`
  