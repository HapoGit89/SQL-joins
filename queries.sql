--Query 1--

SELECT * FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id;

-- Query 2--

SELECT first_name, last_name, COUNT(*) AS num_cars FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY first_name;

-- Query 3 --

SELECT first_name, last_name, ROUND(AVG(price)) AS avg_price, COUNT(*) AS count FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id HAVING AVG(price)> 10000 ORDER BY first_name desc ;
