DROP DATABASE IF EXISTS `shop1`;
CREATE DATABASE IF NOT EXISTS `shop1`;

USE `shop1`;

CREATE TABLE IF NOT EXISTS `Product` (
    `ProductID` INT  UNSIGNED NOT NULL AUTO_INCREMENT,
    `NAME` VARCHAR(50),
    `TYPE` VARCHAR(50),
    `PRICE` FLOAT,
    `COUNT` INT,
    PRIMARY KEY (`ProductID`)

)ENGINE=InnoDB;

INSERT INTO Product(NAME, TYPE, PRICE, COUNT)
VALUES ("Phone", "SAMSUNG", 580000.0, 1500);

INSERT INTO Product(NAME, TYPE, PRICE, COUNT)
VALUES ("Phone", "NOKIA", 180000.0, 1000);

INSERT INTO Product(NAME, TYPE, PRICE, COUNT)
VALUES ("Phone", "iPhone", 580000.0, 1500);


CREATE TABLE IF NOT EXISTS `Customer`(
    `CustomerID` INT UNSIGNED AUTO_INCREMENT,
    `Name` VARCHAR(20),
    `Phone` INT, 
    `Password` VARCHAR(50),
    PRIMARY KEY (`CustomerID`)

)ENGINE=InnoDB;

INSERT INTO `Customer` (Name, Phone, Password)
VALUES ("Alla", 55225265, "djklasdjklf");

INSERT INTO `Customer` (Name, Phone, Password)
VALUES ("Anna", 55225265, "fjghldkfhbb");

INSERT INTO `Customer` (Name, Phone, Password)
VALUES ("Ava", 55225265, "jdghdfjghfjghdflgh");


CREATE TABLE IF NOT EXISTS `Order`(
    `OrderID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `CustomerID` INT REFERENCES Customer (CustomerID),
    `Date` Date,
    `ProductID` INT REFERENCES Product (ProductID),
    `TotalPrice` FLOAT,
    PRIMARY KEY (`OrderID`)

)ENGINE=InnoDB;

INSERT INTO `Order` (CustomerID, `Date`, `ProductID`, `TotalPrice`)
VALUES (2, CURDATE(), 1, 1000.0 ); 

SHOW DATABASES;
SHOW TABLES;
SELECT * FROM `Product`;
SELECT * FROM `Customer`;
SELECT Customer.Name, Product.Type, Product.Price, Date FROM `Order`
INNER JOIN Customer ON Order.CustomerID=Customer.CustomerID
INNER JOIN Product ON Order.ProductID=Product.ProductID; 

