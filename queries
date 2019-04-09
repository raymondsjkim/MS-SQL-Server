// What is the product name, product ID and price of most expensive product in the product table?
SELECT ProductDescription, ProductID, ProductStandardPrice
FROM Product_T
WHERE ProductStandardPrice = (
  SELECT MAX(ProductStandardPrice)
  FROM Product_T
);

// Which orders have been placed since October 20, 2010?
SELECT * FROM Order_T
WHERE OrderDate > '2010-10-20';

// List the product name, standard price, and finish for all tables that cost more than $300 and all desks that cost more than $300.
SELECT ProductDescription, ProductStandardPrice, ProductFinish
FROM Product_T
WHERE ProductStandardPrice > 300
	AND (ProductDescription LIKE '%Desk%'
	OR ProductDescription LIKE '%Table%');
  
// Provide a listing of the unique product IDs for the products in the Order Line table.
SELECT DISTINCT ProductID FROM OrderLine_T;

// Which states have more than one customer? List the states and the number of customers for those states
SELECT CustomerState, COUNT(CustomerState) AS NumberOfCustomers
FROM Customer_T
GROUP BY CustomerState
HAVING COUNT(CustomerState) > 1;

// Add three records to the CUSTOMER_T, use your real name for record 16, your partner as record 17, and a third name for record 18.
INSERT INTO Customer_T (CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES 
	('Raymond Kim', '6768 Piedmont St.', 'Chino', 'CA', '91710-1100'),
	('Mayank Bhagat', '66789 College Ave.', 'Bellflower', 'CA', '17013-8834'),
	('Nipsey Hussle', '60 Rollin Ave.', 'Compton', 'CA', '90059-0011')
	
// Provide a list all the Customer IDs, Customer Names, and Cities, and sort the list in alphabetical order by City.
SELECT CustomerID, CustomerName, CustomerCity 
FROM Customer_T
ORDER BY CustomerCity;
  
// List the product name, standard price, and finish for all tables that cost less than $300 and all desks that cost more than $300.
SELECT ProductDescription, ProductStandardPrice, ProductFinish
FROM Product_T
WHERE (ProductStandardPrice > 300
		AND ProductDescription LIKE '%Desk%')
	OR (ProductStandardPrice < 300
		AND ProductDescription LIKE '%Table%');  
  
  
