DROP TABLE IF EXISTS  Customers ;
DROP TABLE IF EXISTS  Categories ;
DROP TABLE IF EXISTS  OrderDetails ;
DROP TABLE IF EXISTS  Employees ;
DROP TABLE IF EXISTS  Products ;
DROP TABLE IF EXISTS  Customers ;

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



CREATE TABLE Orders
(
    OrderID    INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    EmployeeID INT,
    OrderDate  DATE,
    ShipperID  INT
);

CREATE TABLE Products
(
    ProductID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ProductName NVARCHAR(255),
    SupplierID  INT,
    CategoryID  INT,
    Unit        NVARCHAR(255),
    Price       FLOAT
);

CREATE TABLE Shippers
(
    ShipperID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ShipperName NVARCHAR(255),
    Phone       NVARCHAR(255)
);

CREATE TABLE Suppliers
(
    SupplierID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SupplierName NVARCHAR(255),
    ContactName  NVARCHAR(255),
    Address      NVARCHAR(255),
    City         NVARCHAR(255),
    PostalCode   NVARCHAR(255),
    Country      NVARCHAR(255),
    Phone        NVARCHAR(255)
);

