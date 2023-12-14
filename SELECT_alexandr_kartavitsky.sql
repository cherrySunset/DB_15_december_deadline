--1
SELECT
    s.store_id,
    s.manager_staff_id AS top_selling_employee,
    SUM(p.amount) AS total_revenue
FROM
    store s
JOIN
    staff st ON s.manager_staff_id = st.staff_id
JOIN
    payment p ON st.staff_id = p.staff_id
	
GROUP BY
    s.store_id
ORDER BY
    s.store_id;
---------------
WITH RankedRevenue AS (
    SELECT
        s.store_id,
        s.manager_staff_id AS employee_id,
        SUM(p.amount) AS total_revenue,
        RANK() OVER (PARTITION BY s.store_id ORDER BY SUM(p.amount) DESC) AS revenue_rank
    FROM
        store s
    JOIN
        staff st ON s.manager_staff_id = st.staff_id
    JOIN
        payment p ON st.staff_id = p.staff_id
    
    GROUP BY
        s.store_id, s.manager_staff_id
)
SELECT
    store_id,
    employee_id AS top_selling_employee,
    total_revenue
FROM
    RankedRevenue
WHERE
    revenue_rank = 1;




--2
SELECT title,rental_duration, rating as axpected_age_by_rating
from film
order by rental_duration DESC
LIMIT 5;
--------------
SELECT rating, title
FROM film
WHERE (rating, rental_duration) IN (
    SELECT rating, MAX(rental_duration) AS max_duration
    FROM film
    GROUP BY rating
)
ORDER BY rating
limit 5;






--3
SELECT
    a.actor_id,
    a.first_name,
    a.last_name,
    MAX(f.release_year) AS last_movie_year
FROM
    actor a
JOIN
    film_actor fa ON a.actor_id = fa.actor_id
JOIN
    film f ON fa.film_id = f.film_id
GROUP BY
    a.actor_id, a.first_name, a.last_name
ORDER BY
    last_movie_year DESC;
------------------
WITH ActorLastMovieYear AS (
    SELECT
        a.actor_id,
        a.first_name,
        a.last_name,
        MAX(f.release_year) AS last_movie_year
    FROM
        actor a
    JOIN
        film_actor fa ON a.actor_id = fa.actor_id
    JOIN
        film f ON fa.film_id = f.film_id
    GROUP BY
        a.actor_id, a.first_name, a.last_name
)
SELECT
    actor_id,
    first_name,
    last_name,
    last_movie_year
FROM
    ActorLastMovieYear
ORDER BY
    last_movie_year DESC;




