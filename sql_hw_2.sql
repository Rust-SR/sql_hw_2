/*
1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
 */

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;
-- 2. Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values
('Name1'),
('Name2'),
('Name3'),
('Name4'),
('Name5'),
('Name6'),
('Name7'),
('Name8'),
('Name9'),
('Name10'),
('Name11'),
('Name12'),
('Name13'),
('Name14'),
('Name15'),
('Name16'),
('Name17'),
('Name18'),
('Name19'),
('Name20'),
('Name21'),
('Name22'),
('Name23'),
('Name24'),
('Name25'),
('Name26'),
('Name27'),
('Name28'),
('Name29'),
('Name30'),
('Name31'),
('Name32'),
('Name33'),
('Name34'),
('Name35'),
('Name36'),
('Name37'),
('Name38'),
('Name39'),
('Name40'),
('Name41'),
('Name42'),
('Name43'),
('Name44'),
('Name45'),
('Name46'),
('Name47'),
('Name48'),
('Name49'),
('Name50'),
('Name51'),
('Name52'),
('Name53'),
('Name54'),
('Name55'),
('Name56'),
('Name57'),
('Name58'),
('Name59'),
('Name60'),
('Name61'),
('Name62'),
('Name63'),
('Name64'),
('Name65'),
('Name66'),
('Name67'),
('Name68'),
('Name69'),
('Name70');

/*
3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
*/
create table salary (
	id serial primary key,
	monthly_salary int not null
);
select * from salary;
/*
 * 4. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
 */

insert into salary(monthly_salary)
	values(1000),(1100), (1200), (1300), (1400),(1500), (1600), (1700),(1800), (1900), (2000), (2100), (2200), (2300), (2400), (2500);

/*
 5) Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
 */
	
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/*
 6) Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
 */

insert into employee_salary (employee_id, salary_id)
values(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), 
(9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), 
(18, 1), (19, 1), (20, 1), (21, 1), (22, 1), (23, 1), (24, 1), (25, 1), (26, 1), 
(27, 1), (28, 1), (29, 1), (30, 1), (72, 1), (73, 1), (74, 1), (75, 1), (76, 1), 
(77, 1), (78, 1), (79, 1), (80, 1), (81, 1);

select * from employee_salary;

/*
Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
 */

create table roles (
	id serial primary key,
	role_name int not null unique
);
select * from roles;

-- 8. Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

-- 9. Наполнить таблицу roles 20 строками:
insert into roles (role_name)
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

/*
Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
select * from roles_employee;

-- 11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
values(1,3), 
(2,3), 
(3,3), 
(4,3), 
(5,3), 
(6,3), 
(7,3), 
(8,3), 
(9,3), 
(10,3), 
(11,3), 
(12,3), 
(13,3), 
(14,3), 
(15,3), 
(16,3), 
(17,3), 
(18,3), 
(19,3), 
(20,3), 
(21,3), 
(22,3), 
(23,3), 
(24,3), 
(25,3), 
(26,7), 
(27,3), 
(28,3), 
(29,3), 
(30,3), 
(31,3), 
(32,3), 
(33,3), 
(34,3), 
(35,3), 
(36,3), 
(37,4), 
(38,3), 
(39,3), 
(70,13);