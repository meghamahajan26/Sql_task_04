create table sales(
	Order_id serial primary key,
	Order_date varchar(10),
	Customer_name varchar(100),   
	State varchar(20),
	Product varchar(50),
	Sales int,
	Quantity int
)

select * from sales

insert into sales(Order_id, Order_date, Customer_name, State, Product, Sales, Quantity) values (1, 19-06-2022, 'Megha Mahajan', 'California', 'Novel', 2, 1)

copy sales from 'D:\salesdata.csv' DELIMITER ',' csv header

alter table sales rename column product to category

select * from sales

--Distinct
select DISTINCT quantity from sales

select DISTINCT category, quantity from sales

---where
select * from sales where sales = 20

select * from sales where state = 'Indiana'

---AND
select * from sales where  state = 'Indiana' AND order_id = 21

--OR 
select * from sales where Customer_name = '"Maria Etezadi"'  OR order_id = 923

---NOT Equal To
select * from sales where not sales = 20

---Delete
delete from sales where category = 'Novel'

select * from sales

delete from sales where category = 'Art' OR category = 'Binders'

---Alter
Alter table sales Add total int

---Drop
alter table sales drop total

---Change Type of Column
alter table sales alter column sales type varchar(25)

select * from sales

---Alter column constraint
alter table sales alter column quantity set NOT NULL

alter table sales rename column sales to age

select * from sales












