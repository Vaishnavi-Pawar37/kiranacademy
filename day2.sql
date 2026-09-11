create database ecommerce_db;

use ecommerce_db;

create table products(product_id INT PRIMARY KEY,product_name VARCHAR(100),category VARCHAR(50)
,brand VARCHAR(50),price DECIMAL(10,2),quantity INT,city VARCHAR(50),status VARCHAR(20));

select * from products;
show tables;
insert into products(product_id,product_name,category,brand,price,quantity,city,status) values
(201, 'Galaxy M55',' Mobile', 'Samsung', 32000, 15, 'Pune', 'Available'),
(202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available'),
(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available'),
(204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available'),
(205, 'IdeaPad Slim 3','Laptop','Lenovo', 45000, 12,' Mumbai',' Available'),
(206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock'),
(207, 'Apple Watch SE','Watch','Apple', 30000, 10, 'Mumbai', 'Available'),
(208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18,' Pune',' Available'),
(209, 'OnePlus Pad',' Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available'),
(210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai',' Available');

select product_name from products;
select product_name, price from products;
select product_name, category, brand, price from products;
select * from products where category="Mobile";
select * from products where category="Laptop";
select * from products where price>30000;
select * from products where price<=30000;
select * from products where quantity>10;
select * from products where quantity<10;
select * from products where price=35000;
select * from products where price>=45000;
select * from products where category="Mobile" or category="Laptop";
select * from products where quantity<10 or price>50000;
select * from products where category = 'Mobile' AND price > 30000;
select * from products where brand = 'Samsung' OR brand = 'Apple';
select * from products where city = 'Pune' AND status = 'Available' AND quantity > 10;
select * from products where price between 25000 and 50000;
select * from products where quantity between 5 and 15;
SELECT * FROM products WHERE category IN ('Mobile', 'Laptop', 'Tablet');
select * from products where city IN ('pune','mumbai');
select * from products where brand NOT IN ('samsung');
select * from products where status NOT IN ('Out of Stock');
select * from products where price !=30000;
SELECT * FROM products WHERE product_name LIKE 'Galaxy%';
select * from products where product_name like '%pad%';
select * from products where category = 'Mobile' AND (price > 30000 OR quantity > 15);

update products set price=34000 where product_id=201;
update products set quantity=12 where product_id=202;
update products set status='Available' where product_id=206;
update products set price= price +2000 where category='mobile'; 
update products set quantity = quantity + 5 where city='pune';

DELETE FROM products WHERE product_id = 210;
DELETE FROM products WHERE price < 8000;
DELETE FROM products WHERE status = 'Out of Stock' AND quantity < 5;