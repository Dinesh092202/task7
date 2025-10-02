-- Simple View: Customer Orders
CREATE VIEW customer_orders AS
SELECT c.name, c.city, o.order_id, o.amount, o.order_date
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

-- Aggregated View: Total spent by each customer
CREATE VIEW customer_total_spent AS
SELECT c.name, SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Filtered View: High value orders
CREATE VIEW high_value_orders AS
SELECT order_id, customer_id, amount
FROM Orders
WHERE amount > 400;
