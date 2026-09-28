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
			festival_sale varchar,
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

	
select*from customer_shopping;




