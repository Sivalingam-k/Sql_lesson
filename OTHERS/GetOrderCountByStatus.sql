use Classicmodels;

drop procedure if exists GetOrderByStatus;

Delimiter //
create Procedure GetOrderByStatus(IN orderStatus varchar(255),out total int)
Begin
Select count(ordernumber) into total from orders
where status=orderStatus;

end//
Delimiter;

call GetOrderByStatus('Shipped',@total);
select @total;

==========================================================
select routine_name from information_schema.routines
    where routine_type='PROCEDURE'
    and routine_schema='classicmodels';  //To show all Procedures
	=======================================================================
	
	show procedures status;              
	
	show procedure status like '%order%';