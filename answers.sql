
-- Question one
-- Achieving First Normal Forms
CREATE TABLE productDetails( -- creating product details tables
    OrdersID INT,
    CustomerName VARCHAR (100),
    product VARCHAR (100)
);

-- Inserting values into the created table
INSERT INTO productDetails(OrdersID,CustomerName)
VALUES
(101,'John Doe','Laptop'),
(101,'John Doe','Mouse'),
(102,'Jane Smith','Tablet'),
(102,'Jane Smith','Keyboard'),
(102,'Jane Smith','Mouse'),
(103,'Emily Clark','Phone');

-- Queston 2
-- Second Normal Forms
CREATE TABLE orders(--Creating the first table(orders)
    OrdersID INT PRIMARY KEY ,
    CustomerName VARCHAR (100)
);
CREATE TABLE products( -- Creating the second table(products)
    OrdersID INT,
    Product VARCHAR (100),
    Quantity INT,
    PRIMARY KEY (OrdersID,product)
    FOREIGN KEY (OrdersID) REFERENCES orders(OrdersID) 
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

