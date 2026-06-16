use amazon;
/* PROCEDURE=> is a stored query which fires when user call
It is like user defined function in Python
 */
show tables;
select * from emp_log;
select * from employee;
insert into employee(ename,eadd,edesign,esal) value
('Harish','Delhi','HR',73548);

/*
create procedure procedure_name(parameters)
begin 
	--SQL query ;
end ;

call procedure(argument);
*/
#Procedure to find sum of salaries in each department.

delimiter $$
create procedure salbydesign(in design varchar(100))
begin
	select sum(esal) from employee where edesign=design ;
end $$ delimiter ;

call salbydesign('HR');
call salbydesign('IT');
call salbydesign('Finance');

# procedure to insert data in table
delimiter //
create procedure pro_ins_emp(in name varchar(100), in adds varchar(100),in desg varchar(100),in sal decimal(8,2))
begin 
	insert into employee(ename,eadd,edesign,esal) value (name,adds,desg,sal);
end // delimiter ;

call pro_ins_emp('Harish','Delhi','HR',73548);
call pro_ins_emp('Ramandeep','GZB','Admin',96238);
call pro_ins_emp('Aman','Noida','Admin',42784);
select * from employee;  
select * from emp_log;

#to show all the procedure
show procedure status;
# to see all procedure of a particular database
show procedure status where db='amazon'; 
# to display a particular procedure
show create procedure pro_ins_emp;
#to drop procedure
drop procedure total_salary;

#create a procedure to find the total salary by dept and use that salary for another command

delimiter $$
create procedure total_salary(in desg varchar(100), out salary decimal(8,2))
begin
	select sum(esal) into salary from employee where edesign=desg ;
end $$ delimiter ;

call total_salary('admin',@salary);
select @salary;
