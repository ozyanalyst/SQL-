select statement 
select * from actor;
select * from address;
select * from film;

==Return the title,description,release year and rating 

select title,description,release_year,rating
from film;
select first_name,last_name 
from actor;

==Return the address,district and postal_code

select address,district,postal_code
from address;

==select distinct (to return distinct information)
select distinct rating
from film;

==Distinct replacement cost

select distinct replacement_cost
from film;

==Distinct amount
select * from payment;

select distinct amount
from payment;

==select where statement (the where clause is used to filter your query based on the condition)

select actor_id,first_name,last_name
from actor
where actor_id = 105;

select actor_id, first_name, last_name
from actor
where actor_id in (1,5,10,25,108,200);

select * from  film;

==Return the title,release year,length and rental_rate of R rated movies

select title,release_year,length,rating
from film
where rating ='R';

select title,description,release_year,length,rating
from film
where length <=60;

select title,description,release_year,length,rating
from film
where length <=50;

==Select count statement 

select * from film;

select count(*) from film;
select count(*) from customer;

select count(*) 
from film
where rating = 'R';

==LIMIT

select * from rental;
select * from rental limit 5;
select * from city limit 3;

== order by statement (allows you arrange in ascending or descending order)

select * from customer;

select first_name,last_name,email
from customer
order by first_name asc;

select * from payment;

==Top 10 customers that spent the most

select customer_id,amount
from payment
order by amount desc
limit 10;



select first_name,last_name,email
from customer
order by first_name desc;

== Get the titles of the movies with film ids 1 - 5 (Using film table)

select * from film;

select title 
from film
limit 5;

==Between (lower to higher value)

select * from payment;

select customer_id,staff_id,amount
from payment 
where amount between 3 and 5
order by amount asc;

select count (*)
from payment 
where amount between 3 and 5

== In statement (allows you to check for values in a list)

select * from customer;

select first_name,last_name,email
from customer
where first_name in ('Mary','Maria','Susan','Micheal');

--Like and ilike statement (like is case sensistive while ilike is not case sensitive)

select * from customer;

select first_name,last_name,email
from customer
where first_name like 'ja%';

select first_name,last_name,email
from customer
where first_name like 'Ja%';

select first_name,last_name,email
from customer
where first_name ilike '%ma%';

--Aggregate functions (COUNTS,MIN VALUE,MAX VALUE,RANGE,SUM)

select * from payment;

select count(*)
from payment;

select min (amount) from payment;
select max (amount) from payment;
select avg (amount) from payment;
select round (avg (amount),2) from payment;
select sum (amount) from payment;

--Group by statetment (Groups your results and works with aggregate functions)

select * from film;

select rating, count (rating)
from film
group by rating
order by rating desc;

select * from payment;

select customer_id,sum(amount) 
from payment
group by customer_id;

select customer_id,sum(amount) 
from payment
group by customer_id
order by sum(amount)desc;

---Having clause--  (Used in conjuction with the group by)

select customer_id,sum(amount) 
from payment
group by customer_id
having sum (amount)> 100; 

select * from customer;
