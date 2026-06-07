select eadd,sum(esal) from employee group by eadd having sum(esal)>100000;
# like # wild cards
/* %=> 0 to multicharecter
_ => under score for only one character */
insert into employee(ename,eadd,edesign,esal) values 
('Riya Sharma','Nanital','HR',85237),
('Siya Singh','Nagpur','IT',64237);
select * from employee;

select * from employee where eadd='Noida';
select * from employee where eadd like 'Noida';
select * from employee where eadd like 'N%';  # eadd starting with S
select * from employee where eadd like 'Na%';  #starting with Na
select * from employee where eadd like '%i'; #ending with I
select * from employee where eadd like '%i%'; # i in the eadd
select * from employee where ename like 'R%'; # enam starting with r
select * from employee where eadd like '_a%'; # having once character before a

# not
select * from employee where eadd!='Noida';
select * from employee where not eadd='Noida';
#and
select * from employee where esal>50000 and eadd='Noida';
select * from employee where esal>50000 and esal<80000;
select * from employee where esal>80000 or eadd='Noida';
# Between, insert
select * from employee where esal between 50000 and 80000;
select * from employee where eadd in ('Noida','Delhi');

/* Expression is a condition tool that adds IF-THEN-ELSE decision making logic directly to sql queries */
select *,
case 
	when esal<50000 then 'Below_Average'
	when esal<80000 then 'Average'
    Else 'Above_average'
end as 'status'
from employee;


