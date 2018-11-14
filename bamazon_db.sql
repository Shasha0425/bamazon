DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(250) NULL,
  dept_name VARCHAR (250) NULL,
  price DECIMAL(10,2) NULL,
  stock_qty INT NOT NULL,
  PRIMARY KEY (item_id)
);

-- Insert rows into table 'products'
INSERT INTO products (product_name, dept_name, price, stock_qty)
VALUES
( "namaslay", "mats", 15.99, 10),
( "warrior", "mats", 15.99, 5),
( "exhale", "mats", 15.99, 20),
( "breathe", "mats", 15.99, 22),
( "yogaedd", "mats", 17.99, 17),
( "yogadog", "mats", 10.99, 20),
("chakra", "stretch", 17.99, 15),
("chakrared", "stretch", 17.99, 50),
("chakrablu", "stretch", 17.99, 5),
("chakragrn", "stretch", 17.99, 10),
("chakrayel", "stretch", 17.99, 19),
("chakrablk", "stretch", 17.99, 6),
("ff100","textiles", 7.99, 50),
("ff200","textiles", 7.99, 25),
("ff300","textiles", 7.99, 30),
("ff400","textiles", 7.99, 10),
("ff500","textiles", 7.99, 29),
("ff600","textiles", 7.99, 8);



