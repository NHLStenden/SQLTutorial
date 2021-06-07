CREATE TABLE Customers
(
    CustomerID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CustomerName NVARCHAR(255),
    ContactName  NVARCHAR(255),
    Address      NVARCHAR(255),
    City         NVARCHAR(255),
    PostalCode   NVARCHAR(255),
    Country      NVARCHAR(255)
);

CREATE TABLE Categories
(
    CategoryID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CategoryName NVARCHAR(255),
    Description  NVARCHAR(255)
);

CREATE TABLE Employees
(
    EmployeeID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    LastName   NVARCHAR(255),
    FirstName  NVARCHAR(255),
    BirthDate  DATE,
    Photo      NVARCHAR(255),
    Notes      TEXT
);



CREATE TABLE OrderDetails
(
    OrderDetailID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    OrderID       INT,
    ProductID     INT,
    Quantity      INT
);



