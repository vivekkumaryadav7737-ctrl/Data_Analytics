# How to create a database?
# create database database_name;
create database abcd;
create database amazon;
create database mirror;

# How to drop a database?
# drop database database_name;
 drop database abcd;
 drop database amazon;
 drop database mirror;
 
# How to select a database?  use database_name;
 use abcd;
 use amazon;
 use mirror;
 
 #How to create a table? create table table_name(col_name1 datatype, col_name2 datatype,...) atleast one column should be there to create table
 create table student(
 s_id int,
 s_name text,
 s_add text,
 s_mob text
 );
 
 #How to add a new column?  Alter table table_name add column column_name dataype;
 alter table student add column s_course text;
 
 #How to describe a table? Show structure of table.   describe table_name;
 describe student;
 
 # How to change delete a column ? Alter table table_name drop column column_name;
 alter table student drop column s_course;
 
 #How to change datatype of a column?  alter table table_name modify column column_name datatype;
 alter table student modify column s_id text;
 
 # How to show all the tables in a database? show tables;
 Show tables;