/* LAB 4
Delroy Mathieson*/

-- #1 Get the cities of agents booking an order for a customer whose cid is 'c006'. --
	SELECT city
	FROM agents
	WHERE aid in
      (
	    SELECT aid
	    FROM orders
	    WHERE cid = 'c006'
	  ); 

-- #2 Get the distinct ids of products ordered through any agent who takes at least one order from a customer in Beijing, sorted by pid from highest to lowest. --
	SELECT DISTINCT pid
	FROM orders
	WHERE aid in
	  (
	    SELECT aid
	    FROM orders
	    WHERE cid in
	      (
	      	SELECT cid
	      	FROM customers
	      	WHERE city in ('Beijing')
	      )
	  )
	  ORDER BY pid DESC
	  ;



-- #3 Get the ids and names of customers who did not place an order through agent a03.--
	SELECT cid, name 
	FROM customers
	WHERE cid not in
	  (
	    SELECT cid
	    FROM orders 
	    WHERE aid not in ('a03')
	  );





-- #4 Get the ids of customers who ordered both product p01 and p07. --
	SELECT cid 
	FROM orders
	WHERE cid in
	  (
	    SELECT cid
	    FROM orders
	    WHERE pid in ('p01')
	  )
	  AND cid in
	  (
	    SELECT cid
	    FROM orders
	    WHERE pid in ('p07')
	  );





-- #5 Get the ids of products not ordered by any customers who placed any order through agents a02 or a03, in pid order from highest to lowest. --
	SELECT pid
	FROM orders
	WHERE cid not in
	  (
	    SELECT cid
	    FROM orders 
	    WHERE aid in ('a02', 'a03')
	  )
	  ORDER BY pid DESC
	  ;





-- #6  Get the name, discount, and city for all customers who place orders through agents in Tokyo or New York.--
	SELECT name, discountPct, city
	FROM customers
	WHERE aid in
	  (
	    SELECT cid
	    FROM orders 
	    WHERE aid in ('Tokyo', 'New York')
	  );





-- #7  Get all customers who have the same discount as that of any customers in Duluth or London--
	SELECT *
	FROM customers
	WHERE discountPct in
	  (
	    SELECT discountPct
	    FROM customers 
	    WHERE city in ('Duluth' , 'London')
	  );



--#8  Tell me about check constraints: --
Check constraints are used to limit the value range that can be placed in a table.  
Constraints assure that the input values are not false or unknown values from what the database should have,
preventing bad data from being entered into the database. 
This can be helpful when making an input limit on the values that should be entered such as how many hired employees a department can have at once.  
A bad use of a check constraint can be in a financial business and using a check constraint on accepting negative profit numbers when negative number can be a realistic entity in a business. 
	

