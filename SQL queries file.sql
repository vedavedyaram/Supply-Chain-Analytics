CREATE DATABASE supply_chain_project1;
USE supply_chain_project1;

# first 3 rows 
select * from cleaned_supply_chain limit 3;

# total sales 
select round(sum(sales),2) as total_sales from cleaned_supply_chain;
select sum(sales)as total_sales from cleaned_supply_chain;

# total order 
select count('order id') as total_orders from cleaned_supply_chain;

# top prodcuts
select `product name`,sum(sales) as revenue from  cleaned_supply_chain group by `product name` order by revenue desc limit 5;

#late deliveries 
select `delivery status`,count(*) as delay from cleaned_supply_chain   group by `delivery status` ; 

# profit by region 
select `order region`,sum(`order profit per order`) as profit from cleaned_supply_chain  group by `order region` order by  profit desc limit 2;