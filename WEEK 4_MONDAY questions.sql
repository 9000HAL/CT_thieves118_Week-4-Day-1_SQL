--1. How many actors are there with the last name ‘Wahlberg’?

SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

--> ANSWER: 2




--2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(payment)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99

--> ANSWER: 0




--3. What film does the store have the most of? (search in inventory)

SELECT *
FROM inventory;

-> CURRENT ANSWER: ZORRO ARK 


--OTHER SOLUTION DRAFTS:

SELECT COUNT(film_name)
FROM inventory
GROUP BY film_name
ORDER BY COUNT(*) DESC

SELECT MAX(film_id) AS film_id
FROM title
ORDER BY COUNT(*) DESC


SELECT film_id, SUM()
FROM inventory
GROUP BY film_id
ORDER BY COUNT(*) DESC

-----------------------------------




--4. How many customers have the last name ‘William’?

--5. What store employee (get the id) sold the most rentals?

--6. How many different district names are there?

--7. What film has the most actors in it? (use film_actor table and get film_id)

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)

--10. Within the film table, how many rating categories are there? And what rating has the most
movies total?