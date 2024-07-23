create schema powerbi;
show schemas;
use powerbi;
select * from mommobile;

-- check mobile features and price list
select phone_name, price from mommobile;
 
-- price of most expensive mobile phones
select  phone_name, price from mommobile order by price desc limit 5;

-- price of most cheapest phones
select phone_name ,price from mommobile order by price asc limit 5;

-- price and features of top 5 samsung phones
select * from mommobile where brands='samsung' order by price desc limit 5;

-- android phones high prices
select * from mommobile phones where operating_system_type='Android' order by price desc limit 5;	

-- android phone with low prices
select * from mommobile phones where operating_system_type='Android' order by price asc limit 5;


-- top iphones with prices
select * from mommobile where operating_system_type='IOS' order by price desc limit 5;

-- top phones with 5g support
select * from mommobile where 5G_Availability='Yes';

-- total price of all mobile according to there brand name
select brands , sum(price)from mommobile group by brands;