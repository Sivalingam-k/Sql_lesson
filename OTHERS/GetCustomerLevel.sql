use classicmodels;
drop procedure if exists GetCustomerLevel;

//For variables use 'into'

delimiter $$
create Procedure GetCustomerLevel(
in pcustomernumber int,out pcustomerlevel varchar(20))
begin

declare credit DECIMAL(10,2) DEFAULT 0;
 select creditlimit into credit 
 from customers where customernumber = pcustomernumber;
 
 if credit>50000 then
      set pcustomerlevel='PLATINUM';
 elseif credit<=50000 and credit >10000 then
      set pcustomerlevel='GOLD';
 else
      set pcustomerlevel='SILVER';
 end if;
 
end$$
delimiter ;

=====================
call GetCustomerLevel(484,@level)

