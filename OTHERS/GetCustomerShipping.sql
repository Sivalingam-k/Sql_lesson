use classicmodels;
drop procedure if exists GetCustomerShipping;

//For variables use 'into'

delimiter $$
create Procedure GetCustomerShipping(
in pcustomernumber int,out pshipping varchar(20))
begin

declare customercountry  varchar(100);
 select country into customercountry 
 from customers where customernumber = pcustomernumber;
 
 case customercountry
  When 'USA' then
     set pshipping= '2-DAY SHIPPING';
  when 'CANADA' then
    set pshipping='3-DAY SHIPPING';
	 when 'BELGIUM' or 'ITALY' then
    set pshipping='4-DAY SHIPPING';
	else
	 set pshipping='5-DAY SHIPPING';
	 
	 end case;
end$$
delimiter ;

=====================
call GetCustomerShipping(484,@level)

