use amazon;
# Create trigger to check that old salary cannot be less than new salary
delimiter //
create trigger check_salary
before update on employee
for each row
begin 
	if new.esal<old.esal then
    signal sqlstate '45000'
    set message_text='Salary cannot be decreased';
    end if ;
end // delimiter ;   

update employee set esal=70000 where eid=103;
update employee set esal=65000 where eid=103;  #Error=>Salary cannot  be less than old salary

#create a trigger to check that name Length cannot be less than 4
delimiter $$
create trigger validate_name
before insert on employee
for each row
begin 
	if length(new.ename)<4 then
    signal sqlstate '01000'    #not reliable trigger Error code=01000
	set message_text='Name should be atleast 4 character';
    end if ;
end $$ delimiter ;

insert into employee(ename,eadd,edesign,esal) value 
('Aman','Noida','IT',75238);
insert into employee(ename,eadd,edesign,esal) value
('Anu','Noida','HR',78923);          #show no warning #01000 not reliable for trigger




 
 