create temporary table temp_table (
 first_name varchar(50),
 last_name varchar(50),
 favorite_movice varchar(100)
);

select *
from temp_table;

insert into temp_table 
values('trung','nguyen','mua thu di qua');

select *
from employee_salary;

create temporary table salary_over_50k (
	select *
    from employee_salary
    where salary >= 5000
);

select * 
from salary_over_50k