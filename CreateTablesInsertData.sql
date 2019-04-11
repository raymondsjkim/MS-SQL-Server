CREATE TABLE Customer_T (
	CustomerID		INT NOT NULL IDENTITY PRIMARY KEY,
	CustomerName		varchar(50),
	CustomerAddress		varchar(50) NOT NULL,
	CustomerCity		varchar(50) NOT NULL,
	CustomerState		varchar(2) NOT NULL,
	CustomerPostalCode	varchar(10) NOT NULL,
);

CREATE TABLE Order_T (
	OrderID		INT NOT NULL PRIMARY KEY,
	OrderDate	DATE NOT NULL,
	CustomerID	INT NOT NULL FOREIGN KEY REFERENCES Customer_T(CustomerID),
);

CREATE TABLE Product_T (
	ProductID		INT NOT NULL IDENTITY PRIMARY KEY,
	ProductDescription	varchar(50) NOT NULL,
	ProductFinish		varchar(50) NOT NULL,
	ProductStandardPrice	decimal(38,2) NOT NULL,
	ProductLineID		INT NOT NULL,
);

CREATE TABLE OrderLine_T(
	OrderID			INT NOT NULL,
	ProductID		INT NOT NULL,
	OrderedQuantity		INT NOT NULL,
	PRIMARY KEY (OrderID, ProductID)
);

INSERT INTO Customer_T (CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES 
	('Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056'),
	('Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '12209-1125'),
	('Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '07008-3188')


INSERT INTO Order_T (OrderID, OrderDate, CustomerID)
VALUES 
	(1001, '21/Oct/10', 1),
	(1002, '21/Oct/10', 8),
	(1003, '22/Oct/10', 15),
	(1004, '22/Oct/10', 5),
	(1005, '24/Oct/10', 3),
	(1006, '24/Oct/10', 2),
	(1007, '27/Oct/10', 11),
	(1008, '30/Oct/10', 12),
	(1009, '05/Nov/10', 4),
	(1010, '05/Nov/10', 1)

INSERT INTO Product_T (ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID) 
VALUES
	('End Table', 'Cherry', 175, 1),
	('Coffee Table', 'Natural Ash', 200, 2),
	('Computer Desk', 'Natural Ash', 375, 2),
	('Entertainment Center', 'Natural Maple', 650, 3),
	('Writers Desk', 'Cherry', 325, 1),
	('8-Drawer Desk', 'White Ash', 750, 2),
	('Dining Table', 'Natural Ash', 800, 2),
	('Computer Desk', 'Walnut', 250, 3)

INSERT INTO OrderLine_T(OrderID, ProductID, OrderedQuantity)
VALUES
	(1001, 1, 2),
	(1001, 2, 2),
	(1001, 4, 1),
	(1002, 3, 5),
	(1003, 3, 3),
	(1004, 6, 2),
	(1004, 8, 2),
	(1005, 4, 4),
	(1006, 4, 1),
	(1006, 5, 2),
	(1006, 7, 2),
	(1007, 1, 3),
	(1007, 2, 2),
	(1008, 3, 3),
	(1008, 8, 3),
	(1009, 4, 2),
	(1009, 7, 3),
	(1010, 8, 10)
