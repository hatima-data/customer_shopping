create  table customer_shopping (
			transaction_id varchar ,
			customer_id varchar,
			purchase_date date,
			age int,
			gender varchar,
			location varchar,
			online_offline varchar,
			online_store varchar,
			category varchar,
			item_purchased varchar,
			brand varchar,
			color varchar,
			size varchar,
			quantity int ,
			purchase_amount numeric,
			discount int,
			delivery_speed varchar,
			delivery_time int,
			subscription_status varchar,
			payment_method varchar,
			review_rating int,
			return_status varchar,
			frequency_of_purchases varchar

			
)

select*from customer_shopping;
select max(purchase_amount) from customer_shopping;
select min(purchase_amount) from customer_shopping;

select 
	category, 
	count(*) 
	from customer_shopping
	group by category;

select
	age,
	count(*)
	from customer_shopping
	group by age;

select 
	gender,
	count(*)
	from customer_shopping
	group by gender;

select 
	location,
	count(*)
	from customer_shopping
	group by location;

select
	online_offline,
	count(*)
	from customer_shopping
	group by online_offline;
	

select
	item_purchased,
	count(*)
	from customer_shopping
	group by item_purchased ;


select
	brand,
	count(*)
	from customer_shopping
	group by brand;

select
	color,
	count(*)
	from customer_shopping
	group by color;


select
	size,
	count(*)
	from customer_shopping
	group by size;

select
	payment_method,
	count(*)
	from customer_shopping
	group by payment_method;


select
	customer_id,
	purchase_amount,
	category
	from customer_shopping
	limit 10;

select 
	category,
	sum(purchase_amount)
	from customer_shopping
	group by category
	order by sum(purchase_amount) desc;

select 
	payment_method,
	count(*)
	from customer_shopping
	group by payment_method
	order by count(*) asc;

select 
	category,
	avg(purchase_amount)
	from customer_shopping
	where quantity>1
	group by category;

select 
	payment_method,
	sum(purchase_amount)
	from customer_shopping
	group by payment_method
	having sum(purchase_amount)>100000;

select 
	delivery_speed,
	count(customer_id)
	from customer_shopping
	where location in('New York','Los Angeles')
	group by delivery_speed;
	

select 
	gender,
	max(purchase_amount)
	from customer_shopping
	group by gender
	limit 1

select 
	gender,
	max(purchase_amount)
	from customer_shopping
	group by gender
	having max(purchase_amount)>2500;

select 
	payment_method,
	avg(discount)
	from customer_shopping
	group by payment_method
	order by avg(discount) desc;

select count(*)
	   from customer_shopping  
	  where	transaction_id is null
		or	customer_id is null
		or	purchase_date is null
		or	age is null
		or	gender is null
		or	location is null
		or	online_offline is null
		or	online_store is null
		or	category is null
		or	item_purchased is null
		or	brand is null
		or	color is null
		or	size is null
		or	quantity is null
		or	purchase_amount is null
		or	festival_sale is null
		or	delivery_speed is null
		or	delivery_time is null
		or	subscription_status is null
		or	payment_method is null
		or	review_rating is null
		or	return_status is null
		or	frequency_of_purchases is null;


select*from customer_shopping;
select 
    count(*) filter (where transaction_id is null) as transaction_id_nulls,
    count(*) filter (where customer_id is null) as customer_id_nulls,
    count(*) filter (where purchase_date is null) as purchase_date_nulls,
    count(*) filter (where age is null) as age_nulls,
    count(*) filter (where gender is null) as gender_nulls,
    count(*) filter (where location is null) as location_nulls,
    count(*) filter (where category is null) as category_nulls,
    count(*) filter (where item_purchased is null) as item_purchased_nulls,
    count(*) filter (where brand is null) as brand_nulls,
    count(*) filter (where color is null) as color_nulls,
    count(*) filter (where size is null) as size_nulls,
    count(*) filter (where quantity is null) as quantity_nulls,
    count(*) filter (where purchase_amount is null) as purchase_amount_nulls,
    count(*) filter (where discount is null) as discount_nulls,
    count(*) filter (where payment_method is null) as payment_method_nulls,
    count(*) filter (where delivery_speed is null) as delivery_speed_nulls,
    count(*) filter (where delivery_time is null) as delivery_time_nulls,
    count(*) filter (where online_store is null) as online_store_nulls
from customer_shopping;
	
update customer_shopping
set size='Standart'
where size is null;
	
select delivery_speed from customer_shopping;
select online_store from customer_shopping;

update customer_shopping
set delivery_speed='Standard'
where  delivery_speed is null;

update customer_shopping
set online_store='Standard'
where  online_store is null;




	
