CREATE DATABASE IF NOT EXISTS Products;
USE Products;

DROP TABLE IF EXISTS item_mast;

CREATE TABLE item_mast (
    pro_id INT NOT NULL ,
    pro_name VARCHAR(100) NOT NULL,
    pro_price INT NOT NULL,
    pro_com INT NOT NULL
);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (101, 'Mother Board', 3200, 15);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (102, 'Key Board', 450, 16);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (103, 'ZIP drive', 250, 14);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (104, 'Speaker', 550, 16);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (105, 'Monitor', 5000, 11);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (106, 'DVD drive', 900, 12);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (107, 'CD drive', 800, 12);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (108, 'Printer', 2600, 13);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (109, 'Refill cartridge', 350, 13);

INSERT INTO Products.item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES (110, 'Mouse', 250, 12);

