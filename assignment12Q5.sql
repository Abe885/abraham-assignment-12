-- customerscustomersspending by date
SELECT 
    c.name AS customerName, 
    DATE(o.orderDateTime) AS orderDate,
    SUM(p.price * od.quantity) AS totalSpent
FROM 
    customers c
JOIN orders o ON c.customerId = o.customerId
JOIN orderDetails od ON o.orderId = od.orderId
JOIN pizzas p ON od.pizzaId = p.pizzaId
GROUP BY 
    c.customerId, DATE(o.orderDateTime);
    
    
    
    