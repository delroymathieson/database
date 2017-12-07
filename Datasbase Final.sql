CREATE TABLE Customers(
CustomerID int not null,
LastName text not null,
FirstName text not null,
Address text not null,
City text not null,
State text not null,
ZipCode text not null,
Email text not null,
PhoneNum int not null,
PaymentID text not null,
PRIMARY KEY (CustomerID)
);

DELETE FROM Customers WHERE CustomerID = 2;

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(1, 'Mathieson', 'Delroy', '3399 North Rd', 'Poughkeepsie', 'NY', 12601, 'd.math@yahoo.com', 646-764-9284, '1');

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(2, 'Smith', 'Bob', '25 South Side', 'SunnySide', 'CT', 02551, 'bobby.smith@gmail.com', 745-823-8721, '2');

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(3, 'James', 'Rick', '956 Beach Ave', 'Richmond', 'VA', 12601, 'rickyj@hotmail.com', 843-842-4927, '3');

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(4, 'Labouseur', 'Alan', '33 Yellow Brick Rd', 'HollyWood', 'CA', 91210, 'Alan.Labouseur@marist.edu', 345-984-0739, '3');

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(5, 'Peters', 'Mary', '123 Park Ave', 'Bronx', 'NY', 10453, 'mary.peters@gmail.com', 929-937-4810, '1');

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(6, 'Brown', 'Johnny', '563 Complex Rd', 'Tampa', 'FL', 75632, 'johnnybrown@yahoo.com', 819-526-5319, '2');

INSERT INTO Customers(CustomerID, LastName, FirstName, Address, City, State, ZipCode, Email, PhoneNum, PaymentID) VALUES
(7, 'Henry', 'Mark', '45 HighTop', 'YellowStone', 'MT', 14560, 'mark.henry@aol.com', 435-376-3567, '1');





CREATE TABLE Orders(
OrderID text not null,
CustomersID int not null,
ItemID text not null,
PaymentID int not null,
OrderDate text not null,
ShipName text not null,
ShipAddress text not null,
ShipDate text not null,
CustomerEmail text not null,
BannedCus text not null,
PRIMARY KEY (OrderID)
);

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('001', 1, 'A003', '1', '03-15-13', 'Delroy Mathieson', '3399 North Rd, Poughkeepsie, NY, 12601', '03-17-13','d.math@yahoo.com', 'No');

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('002', 2, 'B035', '2', '01-23-14', 'Bob Smith', '25 South Side, SunnySide,CT, 02551', '01-25-14','bobby.smith@gmail.com', 'Yes');

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('003', 3, 'A003', '3', '09-16-16', 'Rick James', '956 Beach Ave, Richmond, VA, 12601', '09-17-16','rickyj@hotmail.com', 'No');

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('004', 4, 'C453', '3', '07-04-15', 'Alan Labouseur', '33 Yellow Brick Rd, HollyWood, CA, 91210', '07-06-15','alan.labouseur@marist.edu', 'No');

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('005', 5, 'C973', '1', '12-30-15', 'Mary Peters', '123 Park Ave, Bronx, NY, 10453', '01-02-16','mary.peters@gmail.com', 'Yes');

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('006', 6, 'B007', '2', '09-16-16', 'Johnny Brown', '563 Complex Rd, Tampa, NY, 75632', '09-16-16','johnnybrown@yahoo.com', 'No');

INSERT INTO Orders(OrderID, CustomersID, ItemID, PaymentID, OrderDate, ShipName, ShipAddress, ShipDate, CustomerEmail, BannedCus) VALUES
('007', 7, 'C555', '1', '04-19-14', 'Mark Henry', '45 HighTop, YellowStone, MT, 14560', '04-22-14','mark.henry@aol.com', 'No');






CREATE TABLE Shipping(
ShipID text not null,
ShipDate text not null,
ShipCompName text not null,
TrackingNum text not null,
PRIMARY KEY (ShipID)
);

INSERT INTO Shipping VALUES
('U001', '03-17-13', 'USPS', '9405809699937119815434');

INSERT INTO Shipping VALUES
('B002', '01-25-14', 'UPS', '1Z06E18A6836392739');

INSERT INTO Shipping VALUES
('F003', '09-17-16', 'FEDEX', '624893691092');

INSERT INTO Shipping VALUES
('F004', '07-06-15', 'FEDEX', '624898264023');

INSERT INTO Shipping VALUES
('U002', '01-02-16', 'USPS', '9405806854858119815434');

INSERT INTO Shipping VALUES
('U003', '09-16-16', 'USPS', '9405868658075367815434');

INSERT INTO Shipping VALUES
('B003', '04-22-14', 'UPS', '1Z06E18A6847193932');






CREATE TABLE PaymentInfo(
PaymentID text not null,
PaymentType text not null,
TotalPrice text not null,
PRIMARY KEY (PaymentID)
);

INSERT INTO PaymentInfo VALUES
('P001', 'Paypal', '$2100');

INSERT INTO PaymentInfo VALUES
('V002', 'Visa', '$1600');

INSERT INTO PaymentInfo VALUES
('C005', 'Bitcoin', '$10240');

INSERT INTO PaymentInfo VALUES
('C006', 'Bitcoin', '$12000');

INSERT INTO PaymentInfo VALUES
('P002', 'Paypal', '$3600');

INSERT INTO PaymentInfo VALUES
('V003', 'Visa', '$785');

INSERT INTO PaymentInfo VALUES
('C007', 'Bitcoin', '$9000');


SELECT *
FROM PaymentInfo






CREATE TABLE OriginStore(
OriginStoreID text not null,
StoreName text not null,
StoreAddress text not null,
OrderDate text not null,
ShipToTutta text not null,
PRIMARY KEY (OriginStoreID)
);

INSERT INTO OriginStore VALUES
('AD01', 'Adidas', '2101 E Via Arado Rancho Dominguez, CA 90220', '03-12-13', '03-13-13');

INSERT INTO OriginStore VALUES
('N010', 'Nike', '511 NikeTown Rd, TN 32102', '01-21-14', '01-22-14');

INSERT INTO OriginStore VALUES
('YE01', 'YeezySupply', '11790 Southampton Ct, Los Angeles, CA 90077', '09-15-16', '09-15-16');

INSERT INTO OriginStore VALUES
('AD02', 'Adidas', '2101 E Via Arado Rancho Dominguez, CA 90220', '07-04-15', '07-04-15');

INSERT INTO OriginStore VALUES
('AD03', 'Adidas', '2101 E Via Arado Rancho Dominguez, CA 90220', '12-27-15', '12-28-15');

INSERT INTO OriginStore VALUES
('N011', 'Nike', '511 NikeTown Rd, TN 32102', '09-14-16', '09-13-16');

INSERT INTO OriginStore VALUES
('YE02', 'YeezySupply', '11790 Southampton Ct, Los Angeles, CA 90077', '04-17-14', '04-16-14');

     

SELECT *
FROM OriginStore





CREATE TABLE Tutta(
TuttaID text not null,
ItemID text not null,
DateRecieve text not null,
QuantityRecieve text not null,
PRIMARY KEY (TuttaID)
);


INSERT INTO Tutta VALUES
('T001', 'A003', '03-14-13', '1000');

INSERT INTO Tutta VALUES
('T002', 'B035', '01-23-14', '6000');

INSERT INTO Tutta VALUES
('T003', 'A003', '09-15-16', '300');

INSERT INTO Tutta VALUES
('T004', 'C453', '07-05-15', '2500');

INSERT INTO Tutta VALUES
('T005', 'C973', '12-28-15', '3500');

INSERT INTO Tutta VALUES
('T006', 'B007', '09-14-16', '70');

INSERT INTO Tutta VALUES
('T007', 'C555', '04-16-14', '604');



SELECT *
FROM Tutta




CREATE TABLE Items(
ItemID text not null,
ItemName text not null,
OriginStore text not null,
StockQuantity int not null,
ItemPrice text not null,
QuantOrdered int not null,
PRIMARY KEY (ItemID)
);

INSERT INTO Items VALUES
('A003', 'Yeezy Boost 350', 'Adidas', 1000, '$2100', 67);

INSERT INTO Items VALUES
('B035', 'Nike Air Jordan 11s', 'Nike',  6000, '$1600', 53);

INSERT INTO Items VALUES
('A009', 'Yeezy Boost 350', 'YeezySupply', 300, '$10240', 34);

INSERT INTO Items VALUES
('C453', 'Yeezy Boost 350', 'Adidas', 2500, '$12000', 100);

INSERT INTO Items VALUES
('C973', 'Yeezy Boost 750s', 'Adidas',  3500, '$3600', 23);

INSERT INTO Items VALUES
('B007', 'Nike Air Jordan 5s', 'Nike',  70, '$785', 70);

INSERT INTO Items VALUES
('C555', 'Yeezy Boost 750', 'YeezySupply', 604, '$9000', 64);





CREATE TABLE Transaction(
TransactionID text not null,
CustomerID int not null,
ItemID int not null,
QuantityBelow2 int not null,
CHECK(QuantityBelow2 < 2 AND QuantityBelow2 > 0),
PRIMARY KEY(TransactionID)
);



INSERT INTO Transaction VALUES
('3a7-D7o-cht-2ut', 1, 'A003', 1);

INSERT INTO Transaction VALUES
('9aj-X4h-cyD-2r2', 2, 'B035', 1);

INSERT INTO Transaction VALUES
('nw8-8je-8j2-12u', 3, 'A009', 1);

INSERT INTO Transaction VALUES
('93n-92n-68k-pi7', 4, 'C453', 1);

INSERT INTO Transaction VALUES
('35h-lk8-jeu-j32', 5, 'C973', 1);

INSERT INTO Transaction VALUES
('91p-33d-45f-2ew', 6, 'B007', 1);

INSERT INTO Transaction VALUES
('2uh-6ge-32e-98w', 7, 'C555', 1);


SELECT *
FROM Transaction





---View----
CREATE VIEW Brands AS 
SELECT OriginStore, 
       ItemName
FROM   Items
ORDER BY OriginStore ASC;



SELECT *
FROM Brands;




-- VIEW---
CREATE VIEW AdidasOrders AS
SELECT c.FirstName, c.LastName, i.OriginStore
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomersID
INNER JOIN Items i ON o.ItemID = i.ItemID
GROUP BY c.FirstName, c.LastName, i.OriginStore
ORDER BY i.OriginStore ASC, c.FirstName;

SELECT *
FROM AdidasOrders;





--View---
CREATE VIEW PayType AS
SELECT TotalPrice,
       PaymentType
FROM   PaymentInfo
ORDER BY TotalPrice DESC; 

SELECT *
FROM PayType;







--Report---
SELECT FirstName, LastName, PaymentType
FROM Customers, PaymentInfo
WHERE PaymentType = 'Bitcoin'
AND FirstName = 'Delroy'
AND LastName = 'Mathieson'
LIMIT 1;





--Report---
SELECT ShipDate,
	   ShipCompName,
	   TrackingNum
FROM   Shipping
ORDER BY  (ShipCompName) ASC;






-----Stored Procedure-----
CREATE OR REPLACE FUNCTION locateCust(TEXT) 
RETURNS TABLE(lastName TEXT, firstName TEXT, Address TEXT, City TEXT, State TEXT, ZipCode TEXT) AS
$$
DECLARE
	findCust TEXT := $1;
BEGIN
	RETURN QUERY
	SELECT Customers.lastName, Customers.firstName, Customers.Address, Customers.City, Customers.State, Customers.ZipCode
	FROM Customers
	WHERE Customers.lastName = findCust
	ORDER BY lastName ASC, firstName ASC;
END;
$$ LANGUAGE plpgsql

SELECT locateCust('Mathieson');


-----Stored Procedure-----
CREATE OR REPLACE FUNCTION checkProductQuantity(TEXT)
RETURNS TABLE(ItemID TEXT, ItemName TEXT, OriginStore TEXT, StockQuantity INT) AS
$$
DECLARE
	productName TEXT := $1;
BEGIN 
	RETURN QUERY
	SELECT Items.ItemID, Items.ItemName, Items.OriginStore, Items.StockQuantity
	FROM Items
	WHERE Items.ItemName = productName;
END
$$ LANGUAGE plpgsql

SELECT checkProductQuantity('Yeezy Boost 350');








--Trigger---
CREATE OR REPLACE FUNCTION negativeQuantity()
RETURNS TRIGGER AS
$$
BEGIN
	IF (NEW.StockQuantity <= 0) THEN
	DELETE FROM Items WHERE Items.ItemID = NEW.ItemID;
	DELETE FROM Items WHERE Items.StockQuantity = NEW.StockQuantity;
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER negativeQuantity
AFTER INSERT ON Items
FOR EACH ROW
EXECUTE PROCEDURE negativeQuantity();
	
SELECT * FROM Items;
INSERT INTO Items VALUES
('D070', 'Dell Maths 70s', 'Reebok', -100, '$70', 70);







--SECURITY---
CREATE ROLE ADMIN;
GRANT ALL
ON ALL TABLES IN SCHEMA PUBLIC 
TO ADMIN;

--EMPLOYEE---
EMPLOYEE SELECT, UPDATE, AND DELETE
CREATE ROLE EMPLOYEE;
GRANT SELECT, UPDATE, DELETE
ON orders, Customers
TO EMPLOYEE;

--CUSTOMERS---
CREATE ROLE Customers;
GRANT SELECT
ON ALL TABLES IN SCHEMA PUBLIC
TO CUSTOMERS;
GRANT SELECT, UPDATE, DELETE
REVOKE CustomerID
ON ALL TABLES IN SCHEMA PUBLIC
FROM CUSTOMERS;
