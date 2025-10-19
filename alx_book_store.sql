-- Create MySQL database for an online bookstore

CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books(
	book_id INTEGER PRIMARY KEY,
	title VARCHAR(130),
	author_id INTEGER,
	price DOUBLE,
	publication_date DATE,
	FOREIGN KEY(author_id) REFRENCES Authors(author_id)
);

CREATE TABLE Authors(
	author_id INTEGER PRIMARY KEY,
	author_name VARCHAR(215)
);

CREATE TABLE Customers(
	customer_id INTEGER PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

CREATE TABLE Orders(
	order_id INTEGER PRIMARY KEY,
	customer_id INTEGER,
	order_date DATE,
	FOREIGN KEY(customer_id) REFRENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
	orderdetailid INTEGER PRIMARY KEY,
	order_id INTEGER,
	book_id INTEGER,
	quantity DOUBLE,
	FOREIGN KEY(order_id) REFERENCES Orders(order_id),
	FOREIGN KEY(book_id) REFRENCES Books(book_id)
);
