
    
    

select
    product_sk as unique_field,
    count(*) as n_records

from `dbt_tutorial_dev`.`bronze`.`bronze_product`
where product_sk is not null
group by product_sk
having count(*) > 1


