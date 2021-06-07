DROP TABLE IF EXISTS  Customers, Categories, OrderDetails,Orders, Employees, Products, Shippers, Suppliers;

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

CREATE TABLE Shippers
(
    ShipperID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ShipperName NVARCHAR(255),
    Phone       NVARCHAR(255)
);

CREATE TABLE Suppliers (
    SupplierID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SupplierName NVARCHAR(255),
    ContactName NVARCHAR(255),
    Address NVARCHAR(255),
    City NVARCHAR(255),
    PostalCode NVARCHAR(255),
    Country NVARCHAR(255),
    Phone NVARCHAR(255)
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

CREATE TABLE Products
(
    ProductID   INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ProductName NVARCHAR(255),
    SupplierID  INT,
    CategoryID  INT,
    Unit        NVARCHAR(255),
    Price       FLOAT,
    CONSTRAINT FK_SupplierID FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_CategoryID FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE Orders
(
    OrderID    INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    EmployeeID INT,
    OrderDate  DATE,
    ShipperID  INT,
    CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_ShipperID FOREIGN KEY (ShipperID) REFERENCES Shippers (ShipperID) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE OrderDetails
(
    OrderDetailID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    OrderID       INT,
    ProductID     INT,
    Quantity      INT,
    CONSTRAINT FK_OrderID FOREIGN KEY (OrderID) REFERENCES Orders (OrderID) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES Products (ProductID) ON DELETE RESTRICT ON UPDATE RESTRICT
);


