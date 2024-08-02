
============================================>>>>>>>>>>>>>>>>>>>>>>STRING FUNCTION:<<<<<<<<<<<<<<<<<<============================================

1.FINDING ASCII VALUE OF THE LETTER:
------------------------------------------
SELECT ascii('t');
 ascii
-------
   116
(1 row)

2.FINDING LENGTH OF THE CHARACTER:

  SELECT char_length('Hello!');
 char_length
-------------
           6
(1 row)

3.CONCATINATION.

SELECT
   'SIVA' || ' ' || 'LINGAM' AS full_name;
   
     full_name
-------------
 SIVA LINGAM
(1 row)

4.CONCATINATION WITH SPACE .

SELECT CONCAT_WS(' ','SHIVA','LINGAM','KUMARASAMY') title;

 
          title
-------------------------
 SHIVA LINGAM KUMARASAMY
(1 row)


5.RETURN THE CHARCATER BASED ON THE N.


 SELECT LEFT('SHIVA',1);
 
 
 left
------
 S
(1 row)


dvdrental=# SELECT RIGHT('SHIVA',1);


 right
-------
 A
(1 row)

6.CONVERT A STRING TO UPPERCASE.

SELECT LOWER('SIVALINGAM');

 lower
------------
 sivalingam
 
(1 row)


7.CONVERT A STRING TO LOWERCASE.

SELECT UPPER('sivalingam');

   upper
------------
 SIVALINGAM
(1 row)

8.RETURNING INDEX-POSITION OF THE LETTER.

SELECT POSITION('SIVA' IN 'PostgreSQL SIVA');

 position
----------
       12
(1 row)

9.REPEAT A STRING N NUMBER OF TIMES.

SELECT REPEAT('HELLO PSQL-SESSION IN CHANGEPOND ',3);


                                  repeat
-----------------------------------------------------------------------------------------------------
 HELLO PSQL-SESSION IN CHANGEPOND HELLO PSQL-SESSION IN CHANGEPOND HELLO PSQL-SESSION IN CHANGEPOND
(1 row)


10.SUBSTRING.


 SELECT  SUBSTRING ('CHANGEPOND', 1, 5);
 substring
-----------
 CHANG
(1 row)

11.TRIM (REMOVE SPACE FROM BOTH THE SIDE)

  trimmed_string
-------------------------
 CHANGEPOND TECHNOLOGIES
(1 row)


12.RTRIM(REMOVE A SYMBOL )

SELECT RTRIM('SIVA!LINGAM@', '@');
    rtrim
-------------
 SIVA!LINGAM
(1 row)
============================================>>>>>>>>>>>>>>>>>>>>>>MATH FUNCTION:<<<<<<<<<<<<<<<<<<============================================


1.CUBE ROOT OF THE NUMBER

 SELECT CBRT(27) ;
 result
--------
      3
(1 row)


2.Calculate the absolute value of a number.

SELECT ABS(-10.25) ;
 result
--------
  10.25
(1 row)


3.Calculate the factorial of a number.

 SELECT factorial(5);
 factorial
-----------
       120
(1 row)

4.FINDING THE GCD.

SELECT gcd(8,12);
 gcd
-----
   4
(1 row)

5.FINDING THE LCM.
 SELECT lcm(12, 18) ;
 lcm
-----
  36
(1 row)

6.FINDING THE LOG.

 SELECT LOG(100);
 log
-----
   2
(1 row)

7. FINDING THE MOD(DIVIDE THE FIRST PARAMETER BY SECOND PARAMETER AND RETURN THE REMAINDER)

SELECT MOD(15,4);

 mod
-----
   3
(1 row)

8.FINDING THE PI VALUE

 SELECT PI();
        pi
-------------------
 3.141592653589793
(1 row)

9.FINDING POWER OF THE NUMBER.

SELECT POWER(2,3);

 power
-------
     8
(1 row)

10.ROUND A NUMBER.

SELECT
dvdrental-#     ROUND( 10.4 );
 round
-------
    10
(1 row)



============================================>>>>>>>>>>>>>>>>>>>>>>DATE FUNCTION:<<<<<<<<<<<<<<<<<<============================================

1.FINDING THE CURRENTDATE

 SELECT CURRENT_DATE;
 current_date
--------------
 2024-07-17
(1 row)

2. FINDING CURRENT DATE WITH TIME
SELECT NOW();
               now
----------------------------------
 2024-07-17 17:15:58.480845+05:30
(1 row)

3.CONVERTING A STRING TO DATE

SELECT TO_DATE('20170103','YYYYMMDD');

  to_date
------------
 2017-01-03
(1 row)


4.TO GENERATE SEQUENTIAL DATES 

SELECT MAKE_DATE(2024, 1, day) dates
FROM generate_series(1, 8) AS day;

   dates
------------
 2024-01-01
 2024-01-02
 2024-01-03
 2024-01-04
 2024-01-05
 2024-01-06
 2024-01-07
 2024-01-08
(8 rows)



============================================>>>>>>>>>>>>>>>>>>>>>>MERGE FUNCTION:<<<<<<<<<<<<<<<<<<============================================

CREATE TABLE SourceProducts(
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(9,2)
);
INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(1,'Table',100);
INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(2,'Desk',80);
INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(3,'Chair',50);
INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(4,'Computer',300);

CREATE TABLE TargetProducts(
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(9,2)
);

INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(1,'Table',100);
INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(2,'Desk',180);
INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(5,'Bed',50);
INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(6,'Cupboard',300);


SELECT * FROM SourceProducts;

 productid | productname | price
-----------+-------------+--------
         1 | Table       | 100.00
         2 | Desk        |  80.00
         3 | Chair       |  50.00
         4 | Computer    | 300.00
(4 rows)


SELECT * FROM TargetProducts;

 productid | productname | price
-----------+-------------+--------
         1 | Table       | 100.00
         2 | Desk        | 180.00
         5 | Bed         |  50.00
         6 | Cupboard    | 300.00
(4 rows)

//MERGE QUERY

MERGE TargetProducts AS Target
USING SourceProducts AS Source
ON Source.ProductID = Target.ProductID
WHEN NOT MATCHED BY Target THEN
    INSERT (ProductID,ProductName, Price) 
    VALUES (Source.ProductID,Source.ProductName, Source.Price);