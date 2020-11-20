use lab;

create table employee( 
	empid CHAR(4) ,
	name CHAR(10) not null, 
	designation CHAR(30) not null,
	dob date not null,
	salary numeric
);
 
create table employdetails(
	sex char(1),
	nationality char(10),
	gno int,
	primary key (gno),
	empid char(4) references employee(empid)
);

 insert into employee values 
("e1","Steve","CO","1922-3-11","45250"),
("e2","Bert","XO","1980-5-4","22380");

insert into employdetails values 
("M","Serbian","27","e2"),
("M","Infia","56","e5");

select * from employee where empid in (select empid from employdetails);

select * from employee where empid not in(select empid from employdetails);
