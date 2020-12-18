#a
CREATE TABLE store(
	    order_no int primary key AUTO_INCREMENT,
	    code varchar(10) not null,
	    item varchar(30) not null,
	    quantity int default 0,
	    price float,
	    discount int default 0,
	    mrp float not null
);

#b
INSERT INTO store(code,item,quantity,price,discount,mrp)
VALUES 
("a123", "Macbook Pro 13", 14, 100999.99, 2000, 120000),
("a420", "iPhone 12", 12, 90000, 1000, 119900),
("a123", "Airpods Pro", 10, 30000, 0, 59900);

#c
SELECT * FROM store; 

#d
SELECT MOD(price,9) FROM store;

#e
SELECT price,POWER(price,2) FROM store;

#f
SELECT ROUND(mrp DIV 7) FROM store;
