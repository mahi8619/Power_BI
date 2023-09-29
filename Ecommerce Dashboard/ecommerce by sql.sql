create database ecommerce_sales;
use ecommerce_sales;

select * From ecommerce_data;
-- 1. YTD sales

Select (sum(sales_per_order)-sum(order_item_discount))  as ytd from ecommerce_data  ;

select * from us_state_long_lat_codes;

-- 2. YTD Profit
Select sum(profit_per_order) from ecommerce_data;
 
 
 select CONCAT('$', ROUND(SUM(profit_per_order) / 1000000),'M') from ecommerce_data;
  from 
 ;with cte as(
 select  month, year, sum(value) result from ecommerce_data group by company, month,year
 select sales_per_order , order_date,sum(sales_per_order) over  (partition by year(order_date) order by order_date as ytd)
 from ecommerce_data;