use classicmodels;
drop procedure if exists GetCustomerShippingTime;

//For variables use 'into'

delimiter $$
create Procedure GetCustomerShippingTime(
in corderNumber int,out deliverystatus varchar(20))
begin

declare date1  DATE;
declare date2  DATE;

declare delivaryValue  int;
 select requireddate,shippeddate into date1,date2 
 from orders where orderNumber = corderNumber;
 
 
 set delivaryValue=DATEDiff(date2,date1);
 
 if delivaryValue<0 then
   set deliverystatus='Early';
   elseif delivaryValue =0 then 
       set deliverystatus='On-Time';
   elseif delivaryValue >0 then 
       set deliverystatus='Late ';
      
   
   else
  set deliverystatus='NO-Data';
   end if;
 
end$$
delimiter ;

=====================
call GetCustomerShippingTime(10141,@level);