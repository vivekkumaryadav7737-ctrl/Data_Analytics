show databases;
use amazon;
show tables;
select * from employee;
create table emp_log(
logid int primary key auto_increment,
eid int,
ename varchar(100),
eadd varchar(100),
edesign varchar(100),
esal decimal(8,2),
time_ timestamp default current_timestamp,
event_ varchar(100)
);
insert into employee(ename,eadd,edesign,esal) value ('Mohit','Noida','IT',85273);
# to keep the log. This change will also be made to emp_log table.
/*
 TRIGGERS=> Type of stored procedures that runs automatically when a specific event occurs in a database.
Event=> Insert, Delete, Update 
SYNTAX=> 
delimitter $$(any symbol)
create trigger trigger_name
before|after insert|delete|update on table_name
for each row
begin
	--SQL;
end $$(any symbol) delimitter;
*/		
# Trigger for  insertion
delimiter $$
create trigger ins_emp
after insert on employee
for each row
begin
	insert into emp_log(eid,ename,eadd,edesign,esal,event_) value (new.eid,new.ename,new.eadd,new.edesign,new.esal,'Joined');
    
end $$ delimiter ;
insert into employee(ename,eadd,edesign,esal) value ('Suryansh','Delhi','HR',73654);
select * from emp_log;

# Trigger for deleting
delimiter //
create trigger del_emp
before delete on employee
for each row
begin 
	insert into emp_log(eid,ename,eadd,edesign,esal,event_) value(old.eid,old.ename,old.eadd,old.edesign,old.esal,'Resigned');
end// delimiter ;
delete from employee where eid=102;
select * from emp_log;
# Trigger for update
delimiter **
create trigger upd_emp
before update on employee
for each row
begin
	insert into emp_log(eid,ename,eadd,edesign,esal,event_) value (new.eid,new.ename,new.eadd,new.edesign,new.esal,'updated');
end ** delimiter ;
update employee set esal=65000 where eid=103;
update employee set esal=85000 where eid=109;
select * from emp_log;