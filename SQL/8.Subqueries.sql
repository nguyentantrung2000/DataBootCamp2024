select * 
from employee_demographics;

select *
from employee_salary;

select *
from employee_demographics
where employee_id in (
		select employee_id 
        from employee_salary
        where dept_id = 1
);

select avg(avg_age)
from (
	select 
	gender, 
    avg(age) as avg_age, 
    max(age), 
    min(age)
    from employee_demographics
    group by gender
) as agg_table

