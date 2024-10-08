DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON  employee_salary
    FOR EACH ROW 
BEGIN
	INSERT INTO employee_demographics (employee_id,first_name,last_name)
    VALUES (NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary (employee_id,first_name,last_name,occupation,salary,dept_id)
values(0,'nguyen','trung','lovegirl',100000,2);

select *
from employee_salary;

select *
from employee_demographics;

-- Event;
select *
from employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees
on schedule every 30  second
do
begin
	DELETE
    from employee_demographics
    where  age  >= 60;
end $$
DELIMITER ;