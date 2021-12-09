--1) Cоздать таблицу employees_9
create table employees_9(
id serial primary key,
employee_name varchar(50) not null);

drop table employees_9;

select * from employees_9;
select * from salary_9;
select * from employees_salary_9;
select * from roles;
select * from roles_employee;


-- 2) Наполнить таблицу 70 строк
insert into employees_9(employee_name)
values
('Aaron'), 
('Adam'), 
('Adrian'), 
('Aidan'), 
('Aiden'), 
('Alex'), 
('Alexander'), 
('Andrew'), 
('Angel'), 
('Anthony'), 
('Austin'), 
('Ayden'), 
('Benjamin'), 
('Blake'), 
('Brandon'), 
('Brayden'), 
('Brian'), 
('Brody'), 
('Bryan'), 
('Caleb'), 
('Cameron'), 
('Carlos'), 
('Carson'), 
('Carter'), 
('Charles'), 
('Chase'), 
('Christian'), 
('Christopher'), 
('Cole'), 
('Colton'), 
('Connor'), 
('Cooper'), 
('Daniel'), 
('David'), 
('Diego'), 
('Dominic'), 
('Dylan'), 
('Eli'), 
('Elijah'), 
('Eric'), 
('Ethan'), 
('Evan'), 
('Gabriel'), 
('Gavin'), 
('Hayden'), 
('Henry'), 
('Hunter'), 
('Ian'), 
('Isaac'), 
('Isaiah'), 
('Jack'), 
('Jackson'), 
('Jacob'), 
('James'), 
('Jason'), 
('Jayden'), 
('Jeremiah'), 
('Jesus'), 
('John'), 
('Jonathan'), 
('Jordan'), 
('Jose'), 
('Joseph'), 
('Joshua'), 
('Josiah'), 
('Juan'), 
('Julian'), 
('Justin'), 
('Kevin'), 
('Kyle');

-- 3) Создать таблицу salary
create table salary_9(
id serial primary key,
monthly_salary int not null
);

-- 4) аполнить salary 15 строк
insert into salary_9(monthly_salary)
values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from employees_9;
select * from salary_9;
select * from employees_salary_9;
select * from roles;
select * from roles_employee;

-- 5) Создать таблицу employee_salary
create table employees_salary_9(
id serial primary key,
id_employees_9 int not null unique,
id_employees_salary_9 int not null,
foreign key (id_employees_9)
references employees_9(id),
foreign key (id_employees_salary_9)
references salary_9(id)
);


-- 6) Наполнить таблицу employee_salary 40 строками:
insert into employees_salary_9(id_employees_9, id_employees_salary_9)
values
(41,1),
(42,2),
(43,3),
(44,4),
(45,5),
(46,6),
(47,7),
(48,8),
(49,9),
(50,10),
(51,11),
(52,12),
(53,13),
(54,14),
(55,15),
(56,1),
(57,2),
(58,3),
(59,4),
(60,5),
(61,6),
(62,7),
(63,8),
(64,9),
(65,10),
(66,11),
(67,12),
(68,13),
(69,14),
(70,15),
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);


--7)Создать таблицу roles
create table roles(
id serial primary key,
role_name int not null unique);

--drop table roles;

--8)Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--9)Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


--10)Создать таблицу roles_employee

create table roles_employee
(id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees_9(id),
foreign key (role_id)
references roles(id)
);


--11)Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,1),
(22,2),
(23,3),
(24,4),
(25,5),
(26,6),
(27,7),
(28,8),
(29,9),
(30,10),
(31,11),
(32,12),
(33,13),
(34,14),
(35,15),
(36,16),
(37,17),
(38,18),
(39,19),
(40,20);



select * from employees_9;
select * from salary_9;
select * from employees_salary_9;
select * from roles;
select * from roles_employee;






