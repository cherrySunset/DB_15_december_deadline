update film
SET rental_duration = 21,
    rental_rate = 9.99
where film_id = 1001


insert into payment
values ('32094', '1', '2', '7864', '5.99', '2017-01-14 01:34:36+03'),
('32095', '1', '2', '8127', '2.99', '2017-01-15 02:34:36+03'),
('32096', '1', '2', '9075', '4.99', '2017-02-16 10:09:17+03'),
('32097', '1', '2', '9468', '3.99', '2017-03-17 11:09:16+03'),
('32099', '1', '4', '16451', '11.49','2017-04-18 04:09:15+03'),
('32100', '1', '5', '16745', '14.59', '2017-05-19 10:08:17+03'),
('32101', '1', '4', '16794', '8.52', '2017-06-20 07:09:17+03'),
('32102', '1', '5', '17806', '5.10', '2017-06-01 00:00:00+03'),
('32103', '1', '5', '31892', '14.86', '2017-06-01 00:00:00+03'),
('32104', '1', '5', '32256', '10.22', '2017-06-01 00:00:00+03');





update country
set country = 'Lithuania'
where country_id = 1;

update city 
set city = 'Vilnius'
where city_id = 1;

update address
set address = 'Lusio gate',
    address2 = 'Savanory',
	district = 'Zverinas',
	postal_code = 837741
	where address_id = 1;
	
update customer
set first_name = 'Alexandr',
    last_name = 'Kartavitsky',
	email = 'a_kartavitsky@gmail_com'
	where customer_id = 1;




	
UPDATE customer
SET create_date = current_date
where customer_id = 1;


