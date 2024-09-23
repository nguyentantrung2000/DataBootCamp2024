select *
from parks_and_recreation.employee_demographics;

# group by
select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender;

select occupation, avg(salary), count(salary)
from parks_and_recreation.employee_salary
group by occupation;

# order by
select *
from parks_and_recreation.employee_demographics
order by age desc