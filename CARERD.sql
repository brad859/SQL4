-- create customer table 

create table Customer3(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR (150),
	billing_info VARCHAR(150)
);

-- create car inventory table

create table Car_Inventory(
	inventory_id SERIAL primary key,
	dealership_id INTEGER
);

-- create cars service shop table

create table Cars_Service_Shop(
	serialnumber_id SERIAL primary key,
	customer_id Integer not null,
	foreign key (customer_id) references Customer3(customer_id)
);

-- create car table 

create table Cars(
	Car_id SERIAL primary key,
	Car_brand INTEGER,
	Car_model INTEGER,
	Year_id INTEGER,
	inventory_id INTEGER not null,
	foreign key (inventory_id) references Car_Inventory (inventory_id)
);

-- create salesman table 

create table Salesman(
	Salesman_id SERIAL primary key,
	first_name VARCHAR (100),
	last_name VARCHAR (100)
);

-- create invoice table 

create table Invoice9(
	Invoice_id SERIAL primary key,
	datetime_id VARCHAR (100),
	Car_id INTEGER not null,
	foreign key (Car_id) references Cars (Car_id),
	Customer_id INTEGER not null,
	foreign key (Customer_id) references Customer3(Customer_id),
	serialnumber_id INTEGER not null,
	foreign key (serialnumber_id) references Cars_Service_Shop (serialnumber_id),
	Salesman_id INTEGER not null,
	foreign key (Salesman_id) references Salesman(Salesman_id),
	Sub_total numeric (8,2),
	Total_id numeric (8,2)
);

-- creaete mechanic table 
create table Mechanic1(
	Mechanic_id SERIAL primary key,
	Certification_id INTEGER
);

-- create Car Parts table 

create table Car_Parts(
	Part_id SERIAL primary key,
	import_id INTEGER
);

-- create Car Ticket table 

create table Car_Ticket(
	Ticket_id SERIAL primary key,
	Customer_id Integer not null,
	foreign key (Customer_id) references Customer3(Customer_id),
	Serialnumber_id Integer not null,
	foreign key (Serialnumber_id) references Cars_Service_Shop (Serialnumber_id),
	Mechanic_id integer not null,
	foreign key (Mechanic_id) references Mechanic1 (Mechanic_id),
	Part_id INTEGER not null,
	foreign key (Part_id) references Car_Parts(Part_id),
	Sub_total numeric (8,2),
	Total_id numeric (8,2)
);
-- INSERT PORTION OF THE ASSIGNMENT 
-- insert into customer3 table

insert into Customer3(Customer_id, first_name, last_name,address, billing_info)
VALUES(1,'John','Doe','123 Duck Dynesty Way West Monroe, Arkansas 00000','1111-1111-1111-1111 01/01 111');

insert into Customer3(Customer_id, first_name, last_name,address, billing_info)
VALUES(2, 'Jeff','Jefferson', '234 New York St Paris Wyoming 22222','2222-2222-2222-2222 02/02 222');

select * 
from Customer3

-- insert into Car_Inventory Table 
insert into Car_Inventory(inventory_id,dealership_id)
values(123,'398');
insert into Car_Inventory(inventory_id,dealership_id)
values(129,'390');

-- insert into cars service shop
insert into Cars_Service_Shop(Serialnumber_id, Customer_id)
values (05102,'2');

insert into Cars_Service_Shop(Serialnumber_id, Customer_id)
values (01234,'1');

-- insert into Car table
insert into Cars(car_id, car_brand, car_model, year_id, inventory_id)
values(456,'2145', '12345', '2022','123');

insert into Cars(car_id, car_brand, car_model, year_id, inventory_id)
values(123,'2356','55555','2013','129');

-- insert into salesman table 
insert into Salesman(Salesman_id, first_name, last_name)
VALUES(1111, 'bob', 'jr');
insert into Salesman(Salesman_id, first_name, last_name)
VALUES(2222, 'Doc', 'Martin');

-- insert into invoice9 table
insert into Invoice9(Invoice_id, datetime_id, Car_id, Customer_id, serialnumber_id, Salesman_id, Sub_total, Total_id)
VALUES(1,'1/1/2021','456','1','05102','1111',20000.15,22125.17);
insert into Invoice9(Invoice_id, datetime_id, Car_id, Customer_id, serialnumber_id, Salesman_id, Sub_total, Total_id)
VALUES(2,'1/2/2021','123','2','01234','2222',40000.15,44135.27);

-- insert into mechanic 1 table 
insert into Mechanic1(Mechanic_id, Certification_id)
VALUES(12,'1');
insert into Mechanic1(Mechanic_id, Certification_id)
VALUES(13,'2');

--insert into Car parts table
insert into Car_Parts(Part_id, Import_id)
VALUES(45,'999');
insert into Car_Parts(Part_id, Import_id)
VALUES(40,'222');

-- insert into car ticket table 
insert into Car_Ticket(Ticket_id, Customer_id, serialnumber_id, Mechanic_id, Part_id, Sub_total, Total_id)
VALUES(1,'1','05102','12','40',40.39, 43.12);
insert into Car_Ticket(Ticket_id, Customer_id, serialnumber_id, Mechanic_id, Part_id, Sub_total, Total_id)
VALUES(2,'2','01234','13','45',30.39, 33.12);

-- Please let me know how I can better improve with this assignment. Thank you.





