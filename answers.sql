-- Question 1
ALTER table ProductDetail
DROP COLUMN Products;

CREATE TABLE Products (
id SMALLINT PRIMARY KEY AUTO_INCREMENT, 
Product VARCHAR (50),
OrderID INT,
FOREIGN KEY(OrderID) REFERENCES ProductDetail (OrderID)
);

INSERT INTO Products (Product, OrderID)
VALUES ("Laptop", 101),
("Mouse", 101),
("Tablet", 102),
("Keyboard", 102),
("Mouse", 102),
("Phone", 103);

-- Question 2
DROP TABLE Products;
CREATE TABLE Products (
id SMALLINT PRIMARY KEY AUTO_INCREMENT, 
Product VARCHAR (50)
);

INSERT INTO Products (Product)
VALUES ("Laptop"),
("Mouse"),
("Tablet"),
("Keyboard"),
("Mouse"),
("Phone");

CREATE TABLE OrderDetails (
id SMALLINT PRIMARY KEY AUTO_INCREMENT,
OrderID INT,
Details_Id SMALLINT,
Quantity INT,
FOREIGN KEY (Details_Id) REFERENCES Products (id),
FOREIGN KEY (OrderID) REFERENCES ProductDetail (OrderID)
);

INSERT INTO OrderDetails (OrderID, Details_Id, Quantity)
VALUES (101, 1, 2),
(102, 2, 3),
(103, 3, 2),
(102, 4, 5);
