#a
CREATE TABLE store_new1(
	    order_no int primary key AUTO_INCREMENT,
	    code varchar(10) not null,
	    item varchar(30) not null,
	    quantity int default 0,
	    price float,
	    discount int default 0,
	    mrp float not null
);

#b
INSERT INTO store_new1(code,item,quantity,price,discount,mrp)
VALUES 
("BOK", "Book", 1, 30, 2000, 10000),
("PEN", "Pen", 5, 50, 1000, 248703),
("APL", "Apple", 50, 1000, 0, 124634);

#c
SELECT * FROM store_new1; 

#d
SELECT MOD(price,9) FROM store_new1;

#e
SELECT price,POWER(price,2) FROM store_new1;

#f
SELECT ROUND(mrp DIV 7) FROM store_new1;
