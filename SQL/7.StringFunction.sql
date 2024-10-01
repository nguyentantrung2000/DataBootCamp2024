# String functions

select length('nguyentantrung');

select first_name, length(first_name) 
from parks_and_recreation.employee_demographics;

select upper('nguyentantrung');
select lower('NGUYENTANTRUNG');
select rtrim('    nguyen tan trung   ');

select first_name, replace(first_name,'a','b')
from parks_and_recreation.employee_demographics;

select first_name, locate('L',first_name)
from parks_and_recreation.employee_demographics;

select first_name, last_name, concat(first_name, ' ' , last_name)
from parks_and_recreation.employee_demographics;