# Limit 

select *
from parks_and_recreation.employee_demographics
limit 3, 1;

# Aliasing

select employee_id as id_cua_nhan_vien, avg(age) as do_tuoi_tb
from parks_and_recreation.employee_demographics 	
group by employee_id
limit 3, 1