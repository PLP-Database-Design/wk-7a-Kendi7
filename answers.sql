
-- Question one
-- Achieving First Normal Forms
CREATE TABLE orders( -- creating orders table
    OrdersID INT PRIMARY KEY ,
    CustomerName VARCHAR (255)
);
CREATE TABLE products( -- creating products table
    productID INT PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR (100)
);
-- Inserting values into the created tables
INSERT INTO orders(OrdersID,CustomerName)
VALUES
(101,'John Doe'),
(102,'Jane Smith'),
(103,'Emily Clark');
INSERT INTO products(product)
VALUES
('Laptop'),
('Mouse'),
('Tablet'),
('Keyboard'),
('Mouse');

-- Queston 2
-- Second Normal Forms
CREATE TABLE orders(--Creating the first table(orders)
    OrdersID INT PRIMARY KEY ,
    CustomerName VARCHAR (255)
);
CREATE TABLE products( -- Creating the second table(products)
    productID INT PRIMARY KEY AUTO_INCREMENT,
    OrdersID INT,
    Product VARCHAR (100),
    Quantity INT,
    FOREIGN KEY (OrdersID) REFERENCES products (OrdersID) 
);
-- Inserting values into the tables
INSERT INTO orders(OrdersID,CustomerName)
VALUES
(101,'John Doe'),
(102,'Jane Smith'),
(103,'Emily Clark');

INSERT INTO products(OrdersID,Product,Quantity)
VALUES
(101,'Laptop',2),
(101,'Mouse',1),
(102,'Tablet',3),
(102,'Keyboard',1),
(102,'Mouse',2),
(103,'Phone',1);

