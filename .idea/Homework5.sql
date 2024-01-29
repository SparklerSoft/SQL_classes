--Task1. Display orders with a cost of 5000 EUR (projection: order_number, order_cost)
SELECT
	OrderDetails.OrderID,
    SUM(Price * Quantity) AS Order_amount
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID
HAVING
	Order_amount >= 5000

--Task2. Display countries to which 3 or more orders were sent
SELECT
	Country,
	COUNT(*) AS Orders
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Country
HAVING
	Orders >= 3

--Task3. Display the TOP 10 best-selling products (projection: product_name, number of_units_sold)
SELECT
	ProductName,
    COUNT(*) AS Sells
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY ProductName
ORDER BY Sells DESC
LIMIT 10

--Task4. Calculate the salary of managers (rate - 5% of the amount of orders sold)
SELECT
	LastName,
    FirstName,
    SUM(Price * Quantity * 0.05) AS Manager_salary
FROM Orders
JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Orders.EmployeeID
ORDER BY Manager_salary DESC

--Task5. Add to the “online chess” database schema with group chat functionality
--https://dbdiagram.io/d/Online_chessmate_with_chat-65aebbeeac844320ae785e66
