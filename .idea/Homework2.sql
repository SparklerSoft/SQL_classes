//Homework Segey Lapidus

//Task 1. Withdraw the penultimate order.
SELECT *
FROM Orders
Order By
	OrderDate DESC
LIMIT 1 OFFSET 1

//Task 2. Display the five oldest orders.
SELECT *
FROM Orders
Order By
	OrderDate ASC
LIMIT 5

//Task 3. Display phone numbers of suppliers, except those from UK and Brazil.
SELECT
	Phone,
    Country
FROM Suppliers
WHERE
	NOT Country IN ('UK', 'Brazil')

//Task 4. Remove products from categories 4 and 5 with prices up to 250 EUR (incl.)
SELECT *
FROM Products
WHERE
	Price <= 250
    AND
    CategoryID IN (4, 5)

//Task 5. Give an answer to the question why a projection is needed in the database
//You don't need to find the data on whole database, with projection you squeeze your request.
//It helps to make a response a more quicker.