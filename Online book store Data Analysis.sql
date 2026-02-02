-------------Online Book store Data Analysis------------

select * from Books;

select * from Customers;
  
select * from Orders;


--1) Retrieve all books in the "Fiction" genre:

select * from books where genre='fiction';

 --2)Find books published after the year 1950:

 SELECT * FROM Books 
WHERE Published_year>1950;


-- 3) List all customers from the Canada:

select * from customers where country='canada';

-- 4) Show orders placed in November 2023:

SELECT * FROM Orders 
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

- 5) Retrieve the total stock of books available:
select sum(stock) as total_stock from books;

-- 6) Find the details of the most expensive book:
SELECT * FROM Books 
ORDER BY Price DESC 


-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM Orders 
WHERE quantity>1;

-- 8) Retrieve all orders where the total amount exceeds $20

SELECT * FROM Orders 
WHERE total_amount>20;

-- 9) List all genres available in the Books table:
SELECT DISTINCT genre FROM Books;

10) Find the book with the lowest stock:

SELECT * FROM Books 
ORDER BY stock 


-- 11) Calculate the total revenue generated from all orders:

select * from orders;

SELECT SUM(total_amount) As Revenue 
FROM Orders;


--12)Retrieve the total number of books sold for each genre:

select * from books;
select * from orders;

SELECT b.Genre, SUM(o.Quantity) AS Total_Books_sold
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.Genre;



-- 13) Find the average price of books in the "Fantasy" genre:

select * from books;

SELECT AVG(price) AS Average_Price
FROM Books
WHERE Genre = 'Fantasy';

--14) List customers who have placed at least 2 orders:
SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(Order_id) >=2;

 ----15)Show the top 3 most expensive books of 'Fantasy' Genre 

 SELECT * FROM books
WHERE genre ='Fantasy'
ORDER BY price DESC ;

-- 16) Retrieve the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS Total_Books_Sold
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY b.Author;

-- 17) List the cities where customers who spent over $30 are located:

SELECT DISTINCT c.city, total_amount
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
WHERE o.total_amount > 30;

select * from customers;
select * from orders;

-- 18) Find the customer who spent the most on orders:

SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent Desc ;

