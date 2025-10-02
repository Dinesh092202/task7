-- Creating Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- Creating Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserting sample Customers
INSERT INTO Customers VALUES
(1, 'Dinesh', 'dine@example.com', 'Bhopal'),
(2, 'Anurag', 'anu@example.com', 'Indore'),
(3, 'Hrash', 'haresh@example.com', 'Pune');

-- Inserting sample Orders
INSERT INTO Orders VALUES
(101, 1, '2025-09-01', 500.00),
(102, 2, '2025-09-02', 300.00),
(103, 1, '2025-09-03', 200.00),
(104, 3, '2025-09-04', 700.00);
