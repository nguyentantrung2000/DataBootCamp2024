

DELIMITER $$
create procedure large_salaries3()
BEGIN
	select *
	from employee_salary
	where salary >= 5000;
	select *
	from employee_salary
	where salary >= 10000;
End $$
DELIMITER ;



DELIMITER $$
create procedure large_salaries4(employee_id_parameter INT)
BEGIN
	select *
	from employee_salary
	where employee_id = employee_id_parameter;
End $$
DELIMITER ;

call large_salaries4(1)

