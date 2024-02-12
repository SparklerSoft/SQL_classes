--Task1. Output the average/cost of goods from categories 1, 2, 5, whose names begin with the letter t

SELECT
	AVG(Price) AS avg_price,
    CategoryID,
    ProductName
FROM Products
WHERE
	CategoryID IN (1,2,5)
    AND
    ProductName LIKE 'T%'

--Task2. Calculate order cost 10248
SELECT
	SUM(Price) AS total_cost,-- I have to add price * quantity
    OrderDetails.OrderID
FROM OrderDetails
JOIN
Products ON OrderDetails.ProductID = Products.ProductID
WHERE
	OrderDetails.OrderID IN (10248)

--Task3. Display the number of products with a price from 10 to 250 EUR
SELECT
	COUNT(*) AS total_products
FROM Products
WHERE
	Price BETWEEN 10 AND 250

--Task4. Display the amount for which goods were sent to customers in Germany
SELECT
    SUM(OrderDetails.Quantity * Products.Price) AS TotalAmount
FROM
    OrderDetails
JOIN
    Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
WHERE
    Customers.Country = 'Germany';

--Task5. https://dbdiagram.io/d/Chess-Game-65ae921aac844320ae7596df