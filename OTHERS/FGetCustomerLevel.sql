use classicmodels;
drop procedure if exists CustomerLevel;

//For variables use 'into'

delimiter $$
create function CustomerLevel(
 credit DECIMAL(10,2) )
 returns varchar (20)
 deterministic 
begin

declare customerLevel varchar(20);

 
 
 if credit>50000 then
      set customerLevel='PLATINUM';
 elseif credit<=50000 and credit >10000 then
      set customerLevel='GOLD';
 else
      set customerLevel='SILVER';
 end if;
 return(customerLevel);
end$$
delimiter ;



// No need to use"call" insted use select.
