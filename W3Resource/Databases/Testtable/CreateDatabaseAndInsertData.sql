CREATE DATABASE IF NOT EXISTS Testtable;

USE Testtable;

DROP TABLE IF EXISTS testtable;

CREATE TABLE testtable (
    col1 VARCHAR(100) NOT NULL
);

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ-402\\44_/100/2015');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001_\\DJ-402\\44_/100/2015');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001_DJ-402-2014-2015');

INSERT INTO Testtable.testtable (col1)
VALUES ('A002_DJ-401-2014-2015');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ_401');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ_402\\44');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ_402\\44\\2015');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ-402%45\\2015/200');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ_402\\45\\2015%100');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ_402%45\\2015/300');

INSERT INTO Testtable.testtable (col1)
VALUES ('A001/DJ-402\\44');



