use classicmodels;
drop procedure if exists Create_Email_List;

//For variables use 'into'

delimiter $$
create Procedure Create_Email_List(
 inout email_list TEXT)
begin

declare email_address varchar(100) default "";
declare done bool default false;

declare cur_email_list Cursor for select email from employees;

declare continue Handler
for not found set done=true;

open cur_email_list;

set email_list='';
process_email:loop
fetch cur_email_list into email_address;
if done=true then
LEAVE process_email;
end if;
set email_list=concat(email_address,";",email_list);
end loop;
 close cur_email_list;
end$$
delimiter ;

===================================
call Create_Email_List(@email_list);

select @email_list
//Auto-Generating the Email

===================================
BY USING WHILE LOOP
===========================================
delimiter $$
create Procedure Create_Email_List(
 inout email_list TEXT)
begin

declare email_address varchar(100) default "";
declare done bool default false;

declare cur_email_list Cursor for select email from employees;

declare continue Handler
for not found set done=true;

open cur_email_list;

set email_list='';
while done=false then
fetch cur_email_list into email_address;

set email_list=concat(email_address,";",email_list);
end while
 close cur_email_list;
end$$
delimiter ;
