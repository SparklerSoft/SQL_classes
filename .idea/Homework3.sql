//Task 1. Display product data (product name, price with 5% discount)

SELECT
	ProductName,
    Price * 0.95 AS Discount_price
FROM Products

//Task 2. Display customer orders not from France (order number, customer name, customer country)

SELECT
	OrderID,
    CustomerName,
    Country
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
	Country != 'France'

//Task 3. Display the name and cost in USD of one most expensive item sold (without using aggregation)

SELECT
	ProductName,
	Price * 1.05 AS USD_price
FROM Products
ORDER BY Price DESC
LIMIT 1

//Task 4. Display a list of countries that supply seafood

SELECT
	Suppliers.Country,
    Categories.CategoryName
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
	CategoryName = 'Seafood'

//Task 5. Bring the two most expensive products from the Beverages category from the USA

SELECT *
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
	Country = 'USA'
    AND
    CategoryName = 'Beverages'
ORDER BY Price DESC
LIMIT 2 OFFSET 0



