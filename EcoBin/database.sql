CREATE DATABASE ewaste_marketplace;

USE ewaste_marketplace;

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    role VARCHAR(20)
);

CREATE TABLE products(
    id INT PRIMARY KEY AUTO_INCREMENT,
    seller_id INT,
    product_name VARCHAR(200),
    category VARCHAR(100),
    description TEXT,
    price DOUBLE,
    quantity INT
);

CREATE TABLE cart(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_id INT,
    quantity INT
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    buyer_id INT,
    total DOUBLE,
    payment_method VARCHAR(50)
);

INSERT INTO users(name,email,password,role)
VALUES
('Admin','admin@gmail.com','admin123','admin'),
('Arun Kumar','arun@gmail.com','123456','seller'),
('Priya Sharma','priya@gmail.com','123456','buyer');

INSERT INTO products(seller_id,product_name,category,description,price,quantity)
VALUES
(2,'Dell Inspiron Laptop','Laptop','Refurbished Dell Laptop',18500,5),
(2,'Samsung Galaxy S21','Mobile','Premium Smartphone',22000,3),
(2,'LG Monitor','Monitor','24 inch LED Monitor',7500,4);