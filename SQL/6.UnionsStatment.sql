-- UNIONS

#check who young  and high pay in the company
select first_name,  last_name, 'young male'
from employee_demographics
where age  < 50 and gender  = 'male'
union
select first_name,  last_name, 'young male'
from employee_demographics
where age  < 40 and gender  = 'female'
union
select first_name,  last_name, 'high pay'
from employee_salary
where salary > 70000
order by first_name,  last_name