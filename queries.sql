-- write your queries here
-- 1.
SELECT *
 FROM owners
 FULL JOIN vehicles
 ON owners.id = vehicles.owner_id;
-- 2.
SELECT first_name, last_name, count(vehicles.owner_id)
 FROM owners
 RIGHT JOIN vehicles
 ON owners.id = vehicles.owner_id
 GROUP BY first_name, last_name
 ORDER BY count ASC;
-- 3.
SELECT first_name, last_name, ROUND(AVG(vehicles.price)) AS average_price, COUNT(vehicles.owner_id)
 FROM owners
 FULL JOIN vehicles
 ON owners.id = vehicles.owner_id
 GROUP BY first_name, last_name
 HAVING AVG(vehicles.price) > 10000
 ORDER BY first_name DESC;