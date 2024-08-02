use Classicmodels;

drop procedure if exists GetOfficeByCountry;

Delimiter //
create Procedure GetOfficeByCountry(IN countryName varchar(255))
Begin
Select * from offices where country = countryName;

end//
Delimiter;

call GetOfficeByCountry('France');