create table stud_personal_data(
	id serial primary key,
	name varchar(50),
	age int,
	mob int,
	email_add varchar(50)
)

select * from stud_personal_data

insert into stud_personal_data values (1, 'Tiya', 20, 95632, 'tiyajha@gmail.com', 'Mumbai')

insert into stud_personal_data values (2, 'Siya', 58, 95832, 'siyamaaa@gmail.com', 'Pune'), (3, 'Piya', 61, 85832, 'piyasaa@gmail.com', 'Pune'), (4, 'Jiya', 79, 75832, 'jiyataiii@gmail.com', 'Nagpur')

insert into stud_personal_data values (5, 'Riya', 29, 96232, 'riyamaaa@gmail.com', 'Pune'), (6, 'Miya', 31, 85522, 'miyasaa@gmail.com', 'Bengaluru'), (7, 'Kiya', 81, 75885, 'kiyataiii@gmail.com', 'Hyderabad')

update stud_personal_data set age = 78 where age > 78

	
alter table stud_personal_data
add CONSTRAINT age CHECK (age <= 78)

UPDATE stud_personal_data
SET name = CASE
    WHEN name = 'Siya' THEN 'a2'
    WHEN name = 'Piya' THEN 'a3'
    WHEN name = 'Riya' THEN 'b1'
	WHEN name = 'Miya' THEN 'b2'
    WHEN name = 'Jiya' THEN 'b3'
    WHEN name = 'Kiya' THEN 'c1'
    ELSE name
END
	
select * from stud_personal_data
	
update stud_personal_data
set name='New user'
where name in('a1','b1')

update stud_personal_data
set name='New user'
where name in('a1','b1')

