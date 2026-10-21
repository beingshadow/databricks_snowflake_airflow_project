
  
  
  
  create or replace view `dbt_tutorial_dev`.`silver`.`silver_salesinfo`
  
  as (
    with sales as (
    select sales_id,
    product_sk,
    customer_sk,
    gross_amount,
    discount_amount,
    payment_method
    from `dbt_tutorial_dev`.`bronze`.`bronze_sales`
),
product as (
    select product_sk,category
    from 

    `dbt_tutorial_dev`.`bronze`.`bronze_product`
),
customer as (
    select customer_sk,gender
    from `dbt_tutorial_dev`.`bronze`.`bronze_customers`
),primary_table as (
select 
s.sales_id as sales_id,
s.payment_method as payment_method,
p.category as category,
c.gender as gender,
s.gross_amount
FROM sales as s 
JOIN 
product as p 
ON s.product_sk=p.product_sk
JOIN customer as c
on s.customer_sk= c.customer_sk
)
select 
category,gender,
sum(gross_amount)
from 
primary_table
group by category,gender
order by category,gender
  )
