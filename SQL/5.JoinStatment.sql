#Join

select dem.employee_id, dem.age, sal.occupation
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id;

# LEFT

select *
from parks_and_recreation.employee_demographics as dem
left join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id ;


# RIGHT

select *
from parks_and_recreation.employee_demographics as dem
right join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id;

# Self Join

select * 
from parks_and_recreation.employee_salary emp1
join parks_and_recreation.employee_salary emp2
on emp1.employee_id + 1  = emp2.employee_id;


#join multiple tables

select *
from parks_and_recreation.employee_demographics as dem
join parks_and_recreation.employee_salary as sal
on dem.employee_id = sal.employee_id
join parks_and_recreation.parks_departments as park
on sal.dept_id = park.department_id