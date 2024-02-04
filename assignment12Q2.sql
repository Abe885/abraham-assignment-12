DROP TABLE IF EXISTS orderDetails;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS pizzas;

CREATE DATABASE IF NOT EXISTS pizza;
USE pizza;

CREATE TABLE customers (
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE pizzas (
    pizzaId INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

CREATE TABLE orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    orderDateTime DATETIME NOT NULL,
    FOREIGN KEY (customerId) REFERENCES customers(customerId)
);

CREATE TABLE orderDetails (
    orderDetailId INT AUTO_INCREMENT PRIMARY KEY,
    orderId INT NOT NULL,
    pizzaId INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (orderId) REFERENCES orders(orderId),
    FOREIGN KEY (pizzaId) REFERENCES pizzas(pizzaId)
);

INSERT IGNORE INTO pizzas (type, price) VALUES 
('Pepperoni & Cheese', 7.99),
('Vegetarian', 9.99),
('Meat Lovers', 14.99),
('Hawaiian', 12.99);

INSERT IGNORE INTO customers (name, phoneNumber) VALUES 
('Trevor Page', '226-555-4982'),
('John Doe', '555-555-9498');

