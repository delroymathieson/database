/* LAB 3
Delroy Mathieson*/

-- #1 List the order number and total dollars of all orders. --
	SELECT ordernum, totalUSD
	FROM orders; 

-- #2 List the name and city of agents named Smith. --
	SELECT name, city
	FROM agents
	WHERE name = 'Smith';

-- #3 List the id, name, and price of products with quantity more than 200,010. --
	SELECT pid, name, priceUSD
	FROM products
	WHERE quantity > 200010;

-- #4 List the names and cities of customers in Duluth. --
	SELECT name, city 
	FROM customers
	WHERE city= 'Duluth';

-- #5 List the names of agents not in New York and not in Duluth. --
	SELECT name, city
	FROM agents
	WHERE city!= 'New York'
	AND city!= 'Duluth';

-- #6  List all data for products in neither Dallas nor Duluth that cost US$1 or more. --
	SELECT *
	FROM products
	WHERE city != 'Duluth'
	AND city!='Dallas'
	AND priceUSD>=1;

-- #7  List all data for orders in March or May. --
	SELECT *
	FROM orders
	WHERE month='March'
	OR month='May';

--#8  List all data for orders in February of US$500 or more. --
	SELECT *
	FROM orders
	WHERE month='Feb'
	AND totalUSD>=500;

--#9  List all orders from the customer whose cid is C005. --
	SELECT *
	FROM orders
	WHERE cid='C005';