with CTE_Example as 
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from CTE_Example;
