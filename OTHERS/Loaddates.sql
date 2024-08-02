use classicmodels;
drop procedure if exists loadDates;

//For variables use 'into'

delimiter $$
create Procedure loadDates(
 startDate DATE, day int)
begin

declare counter int default 0; 
declare currentDate Date default startDate;


 while counter <=day do
 
   call InsertCalendar(currentDate);
   set counter=counter+1;
   set currentDate=date_add(currentDate,INTERVAL 1 day);
   
   end while;
end$$
delimiter ;

=====================
call loadDates('2024-01-01',365);

