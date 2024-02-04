INSERT INTO pizzas (type, price) VALUES 
('pepperoni & cheese', 7.99),
('vegetarian', 9.99),
('meat lovers', 14.99),
('hawaiian', 12.99);

-- Insert customer information only if they do not already exist in the database
INSERT INTO customers (name, phoneNumber) VALUES 
('trevor page', '226-555-4982'),
('john doe', '555-555-9498')
ON DUPLICATE KEY UPDATE
    phoneNumber = phoneNumber;


INSERT INTO orders (customerId, orderDateTime) VALUES 
(1, '2014-09-10 09:47:00'),
(2, '2014-09-10 13:20:00'),
(1, '2014-09-10 09:47:00');


INSERT INTO orderDetails (orderId, pizzaId, quantity) VALUES 
(1, 1, 1), -- Trevor's first order: 1x Pepperoni & Cheese
(1, 3, 1), -- Trevor's first order: 1x Meat Lovers
(2, 2, 1), -- John's order: 1x Vegetarian
(2, 3, 2), -- John's order: 2x Meat Lovers
(3, 3, 1), -- Trevor's second order: 1x Meat Lovers
(3, 4, 1); -- Trevor's second order: 1x Hawaiianorderdetails
