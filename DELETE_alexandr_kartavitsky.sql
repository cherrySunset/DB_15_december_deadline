delete from inventory
where inventory_id = 4582;
delete from inventory
where film_id = 1001;


delete from film_category
where film_id = 1001;

delete from film_actor
where actor_id in (201, 202, 203);

delete from film_actor
where film_id = 1001;

delete from actor
where actor_id in (201, 202, 203);

delete from film
where film_id = 1001;




delete from payment
where customer_id = 1;

delete from rental
where customer_id = 1;

alter table customer
drop constraint customer_address_id_fkey;

delete from address
where city_id = 1;

alter table address
drop constraint address_city_id_fkey;

delete from city
where country_id = 1;

delete from country
where country_id = 1;

delete from store
where address_id = 5;

delete from address
where address_id = 5;

delete from city
where city_id = 1;


