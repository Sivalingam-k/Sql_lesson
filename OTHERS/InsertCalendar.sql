use classicmodels;
drop procedure if exists InsertCalendar;

//For variables use 'into'

delimiter $$
create Procedure InsertCalendar(
 currentDate DATE)
begin

insert into calendars(date,month,quarter,year) values(currentDate,month(currentDate),quarter(currentDate),year(currentDate));

 
end$$
delimiter ;



