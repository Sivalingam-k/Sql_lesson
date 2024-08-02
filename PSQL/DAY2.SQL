Day 2 Of PSQL:
=======================================================================
============================================>>>>>>>>>>>>>>>>>>>>>>>>>>INNER JOIN <<<<<<<<<<<<<<<<<<<<<<<<<=================================================


SELECT CUST.CUSTOMER_ID,CUST.FIRST_NAME,CUST.LAST_NAME,P.AMOUNT,P.PAYMENT_DATE
FROM 
CUSTOMER CUST INNER JOIN PAYMENT P 
ON 
P.CUSTOMER_ID=CUST.CUSTOMER_ID
ORDER BY P.PAYMENT_DATE;

(OR)

SELECT CUST.CUSTOMER_ID,CUST.FIRST_NAME,CUST.LAST_NAME,P.AMOUNT,P.PAYMENT_DATE
FROM CUSTOMER CUST
INNER JOIN PAYMENT P USING (CUSTOMER_ID)
ORDER BY P.PAYMENT_DATE;


 customer_id | first_name  |  last_name   | amount |        payment_date
-------------+-------------+--------------+--------+----------------------------
         416 | Jeffery     | Pinson       |   2.99 | 2007-02-14 21:21:59.996577
         516 | Elmer       | Noe          |   4.99 | 2007-02-14 21:23:39.996577
         239 | Minnie      | Romero       |   4.99 | 2007-02-14 21:29:00.996577
         592 | Terrance    | Roush        |   6.99 | 2007-02-14 21:41:12.996577
          49 | Joyce       | Edwards      |   0.99 | 2007-02-14 21:44:52.996577
         264 | Gwendolyn   | May          |   3.99 | 2007-02-14 21:44:53.996577
          46 | Catherine   | Campbell     |   4.99 | 2007-02-14 21:45:29.996577
         481 | Herman      | Devore       |   2.99 | 2007-02-14 22:03:35.996577
         139 | Amber       | Dixon        |   2.99 | 2007-02-14 22:11:22.996577
         595 | Terrence    | Gunderson    |   2.99 | 2007-02-14 22:16:01.996577
         191 | Jeanette    | Greene       |   2.99 | 2007-02-14 22:23:12.996577
          95 | Paula       | Bryant       |   2.99 | 2007-02-14 22:41:17.996577
         197 | Sue         | Peters       |   2.99 | 2007-02-14 22:43:41.996577
         512 | Cecil       | Vines        |   6.99 | 2007-02-14 22:57:03.996577
         210 | Ella        | Oliver       |   2.99 | 2007-02-14 23:01:30.996577
         119 | Sherry      | Marshall     |   7.99 | 2007-02-14 23:05:16.996577
         432 | Edwin       | Burk         |   5.99 | 2007-02-14 23:07:27.996577
         546 | Kelly       | Knott        |   1.99 | 2007-02-14 23:10:43.996577
         196 | Alma        | Austin       |   5.99 | 2007-02-14 23:13:47.996577
           1 | Mary        | Smith        |   5.99 | 2007-02-14 23:22:38.996577
         368 | Harry       | Arce         |   0.99 | 2007-02-14 23:25:11.996577
         173 | Audrey      | Ray          |   2.99 | 2007-02-14 23:32:33.996577
         244 | Viola       | Hanson       |   6.99 | 2007-02-14 23:32:48.996577
         370 | Wayne       | Truong       |   6.99 | 2007-02-14 23:33:58.996577
         186 | Holly       | Fox          |   4.99 | 2007-02-14 23:47:05.996577
         561 | Ian         | Still        |   2.99 | 2007-02-14 23:52:46.996577
         402 | Luis        | Yanez        |   4.99 | 2007-02-14 23:53:34.996577
          84 | Sara        | Perry        |   0.99 | 2007-02-15 00:06:04.996577
          52 | Julie       | Sanchez      |   4.99 | 2007-02-15 00:06:57.996577
         349 | Joe         | Gilliland    |   2.99 | 2007-02-15 00:11:12.996577
         491 | Rick        | Mattox       |   2.99 | 2007-02-15 00:17:24.996577
         238 | Nellie      | Garrett      |   2.99 | 2007-02-15 00:27:16.996577
         516 | Elmer       | Noe          |   1.99 | 2007-02-15 00:28:17.996577
         209 | Tonya       | Chapman      |   4.99 | 2007-02-15 00:34:54.996577
         451 | Jim         | Rea          |   0.99 | 2007-02-15 00:36:30.996577
         452 | Tom         | Milner       |   4.99 | 2007-02-15 00:37:28.996577
         249 | Dora        | Medina       |   0.99 | 2007-02-15 00:50:12.996577
         264 | Gwendolyn   | May          |   4.99 | 2007-02-15 00:55:33.996577
         430 | Ray         | Houle        |   0.99 | 2007-02-15 00:55:34.996577
         376 | Randy       | Gaither      |   0.99 | 2007-02-15 00:58:29.996577
         146 | Jamie       | Rice         |   7.99 | 2007-02-15 00:59:38.996577
-- More  --
---------------------------------------------------------------------------------------------------------------------------------------------

SELECT CUST.CUSTOMER_ID,CUST.FIRST_NAME ||''||CUST.LAST_NAME "CUSTOMER",S.FIRST_NAME||''||S.LAST_NAME "STAFF",P.AMOUNT,P.PAYMENT_DATE
FROM 
CUSTOMER CUST INNER JOIN PAYMENT P USING (CUSTOMER_ID)
INNER JOIN STAFF S USING (STAFF_ID)
ORDER BY P.PAYMENT_DATE;


 customer_id |       CUSTOMER       |    STAFF    | amount |        payment_date
-------------+----------------------+-------------+--------+----------------------------
         416 | JefferyPinson        | JonStephens |   2.99 | 2007-02-14 21:21:59.996577
         516 | ElmerNoe             | JonStephens |   4.99 | 2007-02-14 21:23:39.996577
         239 | MinnieRomero         | MikeHillyer |   4.99 | 2007-02-14 21:29:00.996577
         592 | TerranceRoush        | JonStephens |   6.99 | 2007-02-14 21:41:12.996577
          49 | JoyceEdwards         | MikeHillyer |   0.99 | 2007-02-14 21:44:52.996577
         264 | GwendolynMay         | JonStephens |   3.99 | 2007-02-14 21:44:53.996577
          46 | CatherineCampbell    | MikeHillyer |   4.99 | 2007-02-14 21:45:29.996577
         481 | HermanDevore         | JonStephens |   2.99 | 2007-02-14 22:03:35.996577
         139 | AmberDixon           | JonStephens |   2.99 | 2007-02-14 22:11:22.996577
         595 | TerrenceGunderson    | JonStephens |   2.99 | 2007-02-14 22:16:01.996577
         191 | JeanetteGreene       | JonStephens |   2.99 | 2007-02-14 22:23:12.996577
          95 | PaulaBryant          | JonStephens |   2.99 | 2007-02-14 22:41:17.996577
         197 | SuePeters            | JonStephens |   2.99 | 2007-02-14 22:43:41.996577
         512 | CecilVines           | MikeHillyer |   6.99 | 2007-02-14 22:57:03.996577
         210 | EllaOliver           | JonStephens |   2.99 | 2007-02-14 23:01:30.996577
         119 | SherryMarshall       | MikeHillyer |   7.99 | 2007-02-14 23:05:16.996577
         432 | EdwinBurk            | JonStephens |   5.99 | 2007-02-14 23:07:27.996577
         546 | KellyKnott           | MikeHillyer |   1.99 | 2007-02-14 23:10:43.996577
         196 | AlmaAustin           | MikeHillyer |   5.99 | 2007-02-14 23:13:47.996577
           1 | MarySmith            | MikeHillyer |   5.99 | 2007-02-14 23:22:38.996577
         368 | HarryArce            | MikeHillyer |   0.99 | 2007-02-14 23:25:11.996577
         173 | AudreyRay            | JonStephens |   2.99 | 2007-02-14 23:32:33.996577
         244 | ViolaHanson          | JonStephens |   6.99 | 2007-02-14 23:32:48.996577
         370 | WayneTruong          | JonStephens |   6.99 | 2007-02-14 23:33:58.996577
         186 | HollyFox             | MikeHillyer |   4.99 | 2007-02-14 23:47:05.996577
         561 | IanStill             | JonStephens |   2.99 | 2007-02-14 23:52:46.996577
         402 | LuisYanez            | JonStephens |   4.99 | 2007-02-14 23:53:34.996577
          84 | SaraPerry            | JonStephens |   0.99 | 2007-02-15 00:06:04.996577
          52 | JulieSanchez         | MikeHillyer |   4.99 | 2007-02-15 00:06:57.996577
         349 | JoeGilliland         | MikeHillyer |   2.99 | 2007-02-15 00:11:12.996577
         491 | RickMattox           | JonStephens |   2.99 | 2007-02-15 00:17:24.996577
         238 | NellieGarrett        | MikeHillyer |   2.99 | 2007-02-15 00:27:16.996577
         516 | ElmerNoe             | MikeHillyer |   1.99 | 2007-02-15 00:28:17.996577
         209 | TonyaChapman         | JonStephens |   4.99 | 2007-02-15 00:34:54.996577
         451 | JimRea               | MikeHillyer |   0.99 | 2007-02-15 00:36:30.996577
         452 | TomMilner            | JonStephens |   4.99 | 2007-02-15 00:37:28.996577
         249 | DoraMedina           | MikeHillyer |   0.99 | 2007-02-15 00:50:12.996577
         264 | GwendolynMay         | MikeHillyer |   4.99 | 2007-02-15 00:55:33.996577
         430 | RayHoule             | JonStephens |   0.99 | 2007-02-15 00:55:34.996577
         376 | RandyGaither         | JonStephens |   0.99 | 2007-02-15 00:58:29.996577
         146 | JamieRice            | JonStephens |   7.99 | 2007-02-15 00:59:38.996577
-- More  --


============================================>>>>>>>>>>>>>>>>>>>>>>>>>>LEFT OUTER JOIN <<<<<<<<<<<<<<<<<<<<<<<<<=================================================

SELECT F.FILM_ID,F.TITLE,I.INVENTORY_ID
FROM
FILM F LEFT JOIN INVENTORY I
ON
I.FILM_ID=F.FILM_ID;


 film_id |            title            | inventory_id
---------+-----------------------------+--------------
       1 | Academy Dinosaur            |            1
       1 | Academy Dinosaur            |            2
       1 | Academy Dinosaur            |            3
       1 | Academy Dinosaur            |            4
       1 | Academy Dinosaur            |            5
       1 | Academy Dinosaur            |            6
       1 | Academy Dinosaur            |            7
       1 | Academy Dinosaur            |            8
       2 | Ace Goldfinger              |            9
       2 | Ace Goldfinger              |           10
       2 | Ace Goldfinger              |           11
       3 | Adaptation Holes            |           12
       3 | Adaptation Holes            |           13
       3 | Adaptation Holes            |           14
       3 | Adaptation Holes            |           15
       4 | Affair Prejudice            |           16
       4 | Affair Prejudice            |           17
       4 | Affair Prejudice            |           18
       4 | Affair Prejudice            |           19
       4 | Affair Prejudice            |           20
       4 | Affair Prejudice            |           21
       4 | Affair Prejudice            |           22
       5 | African Egg                 |           23
       5 | African Egg                 |           24
       5 | African Egg                 |           25
       6 | Agent Truman                |           26
       6 | Agent Truman                |           27
       6 | Agent Truman                |           28
       6 | Agent Truman                |           29
       6 | Agent Truman                |           30
       6 | Agent Truman                |           31
       7 | Airplane Sierra             |           32
       7 | Airplane Sierra             |           33
       7 | Airplane Sierra             |           34
       7 | Airplane Sierra             |           35
       7 | Airplane Sierra             |           36
       8 | Airport Pollock             |           37
       8 | Airport Pollock             |           38
       8 | Airport Pollock             |           39
       8 | Airport Pollock             |           40
       9 | Alabama Devil               |           41
-- More  --


============================================>>>>>>>>>>>>>>>>>>>>>>>>>>RIGHT OUTER JOIN <<<<<<<<<<<<<<<<<<<<<<<<<=================================================


SELECT F.FILM_ID,F.TITLE,I.INVENTORY_ID
FROM
INVENTORY I RIGHT JOIN FILM F
ON
F.FILM_ID=I.FILM_ID;


 film_id |            title            | inventory_id
---------+-----------------------------+--------------
       1 | Academy Dinosaur            |            1
       1 | Academy Dinosaur            |            2
       1 | Academy Dinosaur            |            3
       1 | Academy Dinosaur            |            4
       1 | Academy Dinosaur            |            5
       1 | Academy Dinosaur            |            6
       1 | Academy Dinosaur            |            7
       1 | Academy Dinosaur            |            8
       2 | Ace Goldfinger              |            9
       2 | Ace Goldfinger              |           10
       2 | Ace Goldfinger              |           11
       3 | Adaptation Holes            |           12
       3 | Adaptation Holes            |           13
       3 | Adaptation Holes            |           14
       3 | Adaptation Holes            |           15
       4 | Affair Prejudice            |           16
       4 | Affair Prejudice            |           17
       4 | Affair Prejudice            |           18
       4 | Affair Prejudice            |           19
       4 | Affair Prejudice            |           20
       4 | Affair Prejudice            |           21
       4 | Affair Prejudice            |           22
       5 | African Egg                 |           23
       5 | African Egg                 |           24
       5 | African Egg                 |           25
       6 | Agent Truman                |           26
       6 | Agent Truman                |           27
       6 | Agent Truman                |           28
       6 | Agent Truman                |           29
       6 | Agent Truman                |           30
       6 | Agent Truman                |           31
       7 | Airplane Sierra             |           32
       7 | Airplane Sierra             |           33
       7 | Airplane Sierra             |           34
       7 | Airplane Sierra             |           35
       7 | Airplane Sierra             |           36
       8 | Airport Pollock             |           37
       8 | Airport Pollock             |           38
       8 | Airport Pollock             |           39
       8 | Airport Pollock             |           40
       9 | Alabama Devil               |           41
-- More  --


============================================>>>>>>>>>>>>>>>>>>>>>>>>>>SELF JOIN <<<<<<<<<<<<<<<<<<<<<<<<<=================================================


CREATE TABLE employee (
employee_id INT PRIMARY KEY,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
manager_id INT,
FOREIGN KEY (manager_id) REFERENCES employee (employee_id) ON DELETE CASCADE
);
INSERT INTO employee (employee_id, first_name, last_name, manager_id)
VALUES
(1, 'Windy', 'Hays', NULL),
(2, 'Ava', 'Christensen', 1),
(3, 'Hassan', 'Conner', 1),
(4, 'Anna', 'Reeves', 2),
(5, 'Sau', 'Norman', 2),
(6, 'Kelsie', 'Hays', 3),
(7, 'Tory', 'Goff', 3),
(8, 'Salley', 'Lester', 3);

SELECT * FROM employee;


 employee_id | first_name |  last_name  | manager_id
-------------+------------+-------------+------------
           1 | Windy      | Hays        |
           2 | Ava        | Christensen |          1
           3 | Hassan     | Conner      |          1
           4 | Anna       | Reeves      |          2
           5 | Sau        | Norman      |          2
           6 | Kelsie     | Hays        |          3
           7 | Tory       | Goff        |          3
           8 | Salley     | Lester      |          3
(8 rows)
---------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT E.FIRST_NAME ||''|| E.LAST_NAME EMPLOYEE,
M.FIRST_NAME ||''|| M.LAST_NAME MANAGER
FROM
EMPLOYEE E INNER JOIN EMPLOYEE M
ON
M.EMPLOYEE_ID=E.MANAGER_ID
ORDER BY MANAGER;

    employee    |    manager
----------------+----------------
 SauNorman      | AvaChristensen
 AnnaReeves     | AvaChristensen
 SalleyLester   | HassanConner
 KelsieHays     | HassanConner
 ToryGoff       | HassanConner
 AvaChristensen | WindyHays
 HassanConner   | WindyHays
(7 rows)


SELECT E.FIRST_NAME ||''|| E.LAST_NAME EMPLOYEE,
M.FIRST_NAME ||''|| M.LAST_NAME MANAGER
FROM
EMPLOYEE E LEFT JOIN EMPLOYEE M
ON
M.EMPLOYEE_ID=E.MANAGER_ID
ORDER BY MANAGER;

   employee    |    manager
----------------+----------------
 AnnaReeves     | AvaChristensen
 SauNorman      | AvaChristensen
 SalleyLester   | HassanConner
 KelsieHays     | HassanConner
 ToryGoff       | HassanConner
 HassanConner   | WindyHays
 AvaChristensen | WindyHays
 WindyHays      |
(8 rows)


SELECT E.FIRST_NAME ||''|| E.LAST_NAME EMPLOYEE,
M.FIRST_NAME ||''|| M.LAST_NAME MANAGER
FROM
EMPLOYEE E RIGHT JOIN EMPLOYEE M
ON
M.EMPLOYEE_ID=E.MANAGER_ID
ORDER BY EMPLOYEE;


    employee    |    manager
----------------+----------------
 AnnaReeves     | AvaChristensen
 AvaChristensen | WindyHays
 HassanConner   | WindyHays
 KelsieHays     | HassanConner
 SalleyLester   | HassanConner
 SauNorman      | AvaChristensen
 ToryGoff       | HassanConner
                | KelsieHays
                | AnnaReeves
                | ToryGoff
                | SalleyLester
                | SauNorman
(12 rows)
============================================>>>>>>>>>>>>>>>>>>>>>>>>>>FULL OUTER JOIN <<<<<<<<<<<<<<<<<<<<<<<<<=================================================


SELECT C.*,P.* 
FROM
CUSTOMER C FULL OUTER JOIN  PAYMENT P
ON
C.CUSTOMER_ID=P.CUSTOMER_ID;

 customer_id | store_id | first_name  |  last_name   |                  email                   | address_id | activebool | create_date |       last_update       | active | payment_id | customer_id | staff_id | rental_id | amount |        payment_date
-------------+----------+-------------+--------------+------------------------------------------+------------+------------+-------------+-------------------------+--------+------------+-------------+----------+-----------+--------+----------------------------
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17503 |         341 |        2 |      1520 |   7.99 | 2007-02-15 22:25:46.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17504 |         341 |        1 |      1778 |   1.99 | 2007-02-16 17:23:14.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17505 |         341 |        1 |      1849 |   7.99 | 2007-02-16 22:41:45.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17506 |         341 |        2 |      2829 |   2.99 | 2007-02-19 19:39:56.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17507 |         341 |        2 |      3130 |   7.99 | 2007-02-20 17:31:48.996577
         341 |        1 | Peter       | Menard       | peter.menard@sakilacustomer.org          |        346 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17508 |         341 |        1 |      3382 |   5.99 | 2007-02-21 12:33:49.996577
         342 |        1 | Harold      | Martino      | harold.martino@sakilacustomer.org        |        347 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17509 |         342 |        2 |      2190 |   5.99 | 2007-02-17 23:58:17.996577
         342 |        1 | Harold      | Martino      | harold.martino@sakilacustomer.org        |        347 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17510 |         342 |        1 |      2914 |   5.99 | 2007-02-20 02:11:44.996577
         342 |        1 | Harold      | Martino      | harold.martino@sakilacustomer.org        |        347 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17511 |         342 |        1 |      3081 |   2.99 | 2007-02-20 13:57:39.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17512 |         343 |        2 |      1547 |   4.99 | 2007-02-16 00:10:50.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17513 |         343 |        1 |      1564 |   6.99 | 2007-02-16 01:15:33.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17514 |         343 |        2 |      1879 |   0.99 | 2007-02-17 01:26:00.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17515 |         343 |        2 |      1922 |   0.99 | 2007-02-17 04:32:51.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17516 |         343 |        2 |      2461 |   6.99 | 2007-02-18 18:26:38.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17517 |         343 |        1 |      2980 |   8.99 | 2007-02-20 07:03:29.996577
         343 |        1 | Douglas     | Graf         | douglas.graf@sakilacustomer.org          |        348 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17518 |         343 |        1 |      3407 |   0.99 | 2007-02-21 14:42:28.996577
         344 |        1 | Henry       | Billingsley  | henry.billingsley@sakilacustomer.org     |        349 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17519 |         344 |        1 |      1341 |   3.99 | 2007-02-15 10:54:44.996577
         344 |        1 | Henry       | Billingsley  | henry.billingsley@sakilacustomer.org     |        349 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17520 |         344 |        2 |      1475 |   4.99 | 2007-02-15 19:36:27.996577
         344 |        1 | Henry       | Billingsley  | henry.billingsley@sakilacustomer.org     |        349 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |      1 |      17521 |         344 |        1 |      1731 |   0.99 | 2007-02-16 14:00:38.996577
         345 |        1 | Carl        | Artis        | carl.artis@sakilacustomer.org            |        350 | t          | 2006-02-14  | 2013-05-26 14:49:45.738 |     -- More  --





============================================>>>>>>>>>>>>>>>>>>>>>>>>>>CROSS JOIN <<<<<<<<<<<<<<<<<<<<<<<<<=================================================

SELECT * FROM LANGUAGE  CROSS JOIN CATEGORY;



 language_id |         name         |     last_update     | category_id |    name     |     last_update
-------------+----------------------+---------------------+-------------+-------------+---------------------
           1 | English              | 2006-02-15 10:02:19 |           1 | Action      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           1 | Action      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           1 | Action      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           1 | Action      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           1 | Action      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           1 | Action      | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           2 | Animation   | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           2 | Animation   | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           2 | Animation   | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           2 | Animation   | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           2 | Animation   | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           2 | Animation   | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           3 | Children    | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           3 | Children    | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           3 | Children    | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           3 | Children    | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           3 | Children    | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           3 | Children    | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           4 | Classics    | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           4 | Classics    | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           4 | Classics    | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           4 | Classics    | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           4 | Classics    | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           4 | Classics    | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           5 | Comedy      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           5 | Comedy      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           5 | Comedy      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           5 | Comedy      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           5 | Comedy      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           5 | Comedy      | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           6 | Documentary | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           6 | Documentary | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           6 | Documentary | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           6 | Documentary | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           6 | Documentary | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           6 | Documentary | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           7 | Drama       | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           7 | Drama       | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           7 | Drama       | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           7 | Drama       | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           7 | Drama       | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           7 | Drama       | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           8 | Family      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           8 | Family      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           8 | Family      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           8 | Family      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           8 | Family      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           8 | Family      | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |           9 | Foreign     | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |           9 | Foreign     | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |           9 | Foreign     | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |           9 | Foreign     | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |           9 | Foreign     | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |           9 | Foreign     | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          10 | Games       | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          10 | Games       | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          10 | Games       | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          10 | Games       | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          10 | Games       | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          10 | Games       | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          11 | Horror      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          11 | Horror      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          11 | Horror      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          11 | Horror      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          11 | Horror      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          11 | Horror      | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          12 | Music       | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          12 | Music       | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          12 | Music       | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          12 | Music       | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          12 | Music       | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          12 | Music       | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          13 | New         | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          13 | New         | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          13 | New         | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          13 | New         | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          13 | New         | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          13 | New         | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          14 | Sci-Fi      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          14 | Sci-Fi      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          14 | Sci-Fi      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          14 | Sci-Fi      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          14 | Sci-Fi      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          14 | Sci-Fi      | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          15 | Sports      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          15 | Sports      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          15 | Sports      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          15 | Sports      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          15 | Sports      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          15 | Sports      | 2006-02-15 09:46:27
           1 | English              | 2006-02-15 10:02:19 |          16 | Travel      | 2006-02-15 09:46:27
           2 | Italian              | 2006-02-15 10:02:19 |          16 | Travel      | 2006-02-15 09:46:27
           3 | Japanese             | 2006-02-15 10:02:19 |          16 | Travel      | 2006-02-15 09:46:27
           4 | Mandarin             | 2006-02-15 10:02:19 |          16 | Travel      | 2006-02-15 09:46:27
           5 | French               | 2006-02-15 10:02:19 |          16 | Travel      | 2006-02-15 09:46:27
           6 | German               | 2006-02-15 10:02:19 |          16 | Travel      | 2006-02-15 09:46:27
(96 rows)




============================================>>>>>>>>>>>>>>>>>>>>>>>>>>SUB QUERIES <<<<<<<<<<<<<<<<<<<<<<<<<=================================================

SELECT CITY FROM CITY 
WHERE COUNTRY_ID IN(
                  SELECT COUNTRY_ID FROM COUNTRY  WHERE COUNTRY='Argentina');

         city
----------------------
 Almirante Brown
 Avellaneda
 Baha Blanca
 Crdoba
 Escobar
 Ezeiza
 La Plata
 Merlo
 Quilmes
 San Miguel de Tucumn
 Santa F
 Tandil
 Vicente Lpez
(13 rows)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SUB-QUERY:
==============

SELECT TITLE FROM FILM WHERE FILM_ID IN(
SELECT FILM_ID FROM FILM_CATEGORY WHERE CATEGORY_ID=(
SELECT CATEGORY_ID FROM CATEGORY
WHERE NAME='Action'));



          title
-------------------------
 Amadeus Holy
 American Circus
 Antitrust Tomatoes
 Ark Ridgemont
 Casualties Encino
 Barefoot Manchurian
 Berets Agent
 Bride Intrigue
 Bull Shawshank
 Caddyshack Jedi
 Campus Remember
 Celebrity Horn
 Clueless Bucket
 Crow Grease
 Dances None
 Darko Dorado
 Darn Forrester
 Devil Desire
 Dragon Squad
 Dream Pickup
 Drifter Commandments
 Easy Gladiator
 Entrapment Satisfaction
 Excitement Eve
 Fantasy Troopers
 Firehouse Vietnam
 Fool Mockingbird
 Forrest Sons
 Glass Dying
 Gosford Donnie
 Grail Frankenstein
 Handicap Boondock
 Hills Neighbors
 Kissing Dolls
 Lawrence Love
 Lord Arizona
 Lust Lock
 Magnolia Forrester
 Midnight Westward
 Minds Truman
 Mockingbird Hollywood
-- More  --

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//CO-RELATED SUB-QUERY:
ALL THE FILMS WHOS LENGTH IS GRATER THAN


SELECT FILM_ID,TITLE,LENGTH,RATING FROM FILM F
WHERE LENGTH > (SELECT AVG(LENGTH) FROM FILM WHERE RATING=F.RATING);


 film_id |            title            | length | rating
---------+-----------------------------+--------+--------
     133 | Chamber Italian             |    117 | NC-17
       4 | Affair Prejudice            |    117 | G
       5 | African Egg                 |    130 | G
       6 | Agent Truman                |    169 | PG
      11 | Alamo Videotape             |    126 | G
      12 | Alaska Phantom              |    136 | PG
      13 | Ali Forever                 |    150 | PG
      16 | Alley Evolution             |    180 | NC-17
      19 | Amadeus Holy                |    113 | PG
      21 | American Circus             |    129 | R
      24 | Analyze Hoosiers            |    181 | R
      27 | Anonymous Human             |    179 | NC-17
      29 | Antitrust Tomatoes          |    168 | NC-17
      32 | Apocalypse Flamingos        |    119 | R
      33 | Apollo Teen                 |    153 | PG-13
      35 | Arachnophobia Rollercoaster |    147 | PG-13
      36 | Argonauts Town              |    127 | PG-13
      37 | Arizona Bang                |    121 | PG
      40 | Army Flintstones            |    148 | R
      41 | Arsenic Independence        |    137 | PG
      42 | Artist Coldblooded          |    170 | NC-17
     265 | Dying Maker                 |    168 | PG
      43 | Atlantis Cause              |    170 | G
      47 | Baby Hall                   |    153 | NC-17
      49 | Badman Dawn                 |    162 | R
      50 | Baked Cleopatra             |    182 | G
     126 | Casualties Encino           |    179 | G
      52 | Ballroom Mockingbird        |    173 | G
      56 | Barefoot Manchurian         |    129 | G
      58 | Beach Heartbreakers         |    122 | G
      59 | Bear Graceland              |    160 | R
      61 | Beauty Grease               |    175 | G
      64 | Beethoven Exorcist          |    151 | PG-13
      68 | Betrayed Rear               |    122 | NC-17
      70 | Bikini Borrowers            |    142 | NC-17
      73 | Bingo Talented              |    150 | PG-13
      74 | Birch Antitrust             |    162 | PG
      75 | Bird Independence           |    163 | G
      80 | Blanket Beverly             |    148 | G
      86 | Boogie Amelie               |    121 | R
      88 | Born Spinal                 |    179 | PG
-- More  --
==============================================================================================================================================

SELECT FIRST_NAME,LAST_NAME FROM STAFF
WHERE STAFF_ID = ANY (SELECT MANAGER_STAFF_ID FROM STORE);


 first_name | last_name
------------+-----------
 Mike       | Hillyer
 Jon        | Stephens
(2 rows)


SELECT FIRST_NAME,LAST_NAME FROM STAFF
WHERE STAFF_ID > ANY (SELECT MANAGER_STAFF_ID FROM STORE);

 first_name | last_name
------------+-----------
 Jon        | Stephens

=================================================================================================================================================
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME FROM CUSTOMER
WHERE CUSTOMER_ID > ALL (SELECT CUSTOMER_ID FROM RENTAL WHERE RENTAL_ID IN (18,25)) ORDER BY CUSTOMER_ID;

 customer_id | first_name  |  last_name
-------------+-------------+--------------
          38 | Martha      | Gonzalez
          39 | Debra       | Nelson
          40 | Amanda      | Carter
          41 | Stephanie   | Mitchell
          42 | Carolyn     | Perez
          43 | Christine   | Roberts
          44 | Marie       | Turner
          45 | Janet       | Phillips
          46 | Catherine   | Campbell
          47 | Frances     | Parker
          48 | Ann         | Evans
          49 | Joyce       | Edwards
          50 | Diane       | Collins
          51 | Alice       | Stewart
          52 | Julie       | Sanchez
          53 | Heather     | Morris
          54 | Teresa      | Rogers
          55 | Doris       | Reed
          56 | Gloria      | Cook
          57 | Evelyn      | Morgan
          58 | Jean        | Bell
          59 | Cheryl      | Murphy
          60 | Mildred     | Bailey
          61 | Katherine   | Rivera
          62 | Joan        | Cooper
          63 | Ashley      | Richardson
          64 | Judith      | Cox
          65 | Rose        | Howard
          66 | Janice      | Ward
          67 | Kelly       | Torres
          68 | Nicole      | Peterson
          69 | Judy        | Gray
          70 | Christina   | Ramirez
          71 | Kathy       | James
          72 | Theresa     | Watson
          73 | Beverly     | Brooks
          74 | Denise      | Kelly
          75 | Tammy       | Sanders
          76 | Irene       | Price
          77 | Jane        | Bennett
          78 | Lori        | Wood
-- More  --



SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME FROM CUSTOMER C
WHERE 
 EXISTS  
 (SELECT 1 FROM PAYMENT P 
       WHERE 
            P.CUSTOMER_ID=C.CUSTOMER_ID AND AMOUNT>11);

 customer_id | first_name | last_name
-------------+------------+-----------
          13 | Karen      | Jackson
         116 | Victoria   | Gibson
         195 | Vanessa    | Sims
         204 | Rosemary   | Schmidt
         237 | Tanya      | Gilbert
         362 | Nicholas   | Barfield
         591 | Kent       | Arsenault
         592 | Terrance   | Roush
(8 rows)

=================================================================================================================================================================
CREATE TABLE top_rated_films(
  title VARCHAR NOT NULL,
  release_year SMALLINT
);

CREATE TABLE most_popular_films(
  title VARCHAR NOT NULL,
  release_year SMALLINT
);

INSERT INTO top_rated_films(title, release_year)
VALUES
   ('The Shawshank Redemption', 1994),
   ('The Godfather', 1972),
   ('The Dark Knight', 2008),
   ('12 Angry Men', 1957);

INSERT INTO most_popular_films(title, release_year)
VALUES
  ('An American Pickle', 2020),
  ('The Godfather', 1972),
  ('The Dark Knight', 2008),
  ('Greyhound', 2020);
  
  
   SELECT * FROM MOST_POPULAR_FILMS;
       title        | release_year
--------------------+--------------
 An American Pickle |         2020
 The Godfather      |         1972
 The Dark Knight    |         2008
 Greyhound          |         2020
(4 rows)
--------------------------------------------
 SELECT * FROM TOP_RATED_FILMS;;
          title           | release_year
--------------------------+--------------
 The Shawshank Redemption |         1994
 The Godfather            |         1972
 The Dark Knight          |         2008
 12 Angry Men             |         1957
(4 rows)
============================================================================================================
//UNION:

 SELECT * FROM TOP_RATED_FILMS
  UNION
  SELECT * FROM MOST_POPULAR_FILMS;
  
  
          title           | release_year
--------------------------+--------------
 An American Pickle       |         2020
 The Dark Knight          |         2008
 Greyhound                |         2020
 The Shawshank Redemption |         1994
 The Godfather            |         1972
 12 Angry Men             |         1957
(6 rows)
  
  //UNION ALL:
  
  SELECT * FROM TOP_RATED_FILMS
  UNION ALL
  SELECT * FROM MOST_POPULAR_FILMS;
  
      title           | release_year
--------------------------+--------------
 The Shawshank Redemption |         1994
 The Godfather            |         1972
 The Dark Knight          |         2008
 12 Angry Men             |         1957
 An American Pickle       |         2020
 The Godfather            |         1972
 The Dark Knight          |         2008
 Greyhound                |         2020
(8 rows)
  
  //INTERSECT
  
  SELECT * FROM TOP_RATED_FILMS
  INTERSECT
  SELECT * FROM MOST_POPULAR_FILMS;
  
  
    title      | release_year
-----------------+--------------
 The Godfather   |         1972
 The Dark Knight |         2008
(2 rows)


//EXCEPT

:: IT WILL GIVE TOP_RATED_FILMS EXCEPT MOST_POPULAR_FILMS

   SELECT * FROM TOP_RATED_FILMS
  EXCEPT
  SELECT * FROM MOST_POPULAR_FILMS;
  
  
    title           | release_year
--------------------------+--------------
 The Shawshank Redemption |         1994
 12 Angry Men             |         1957
(2 rows)
  --------------------------------------------------------------------------------------------------------------------------------
  :: IT WILL GIVE MOST_POPULAR_FILMS EXCEPT TOP_RATING_FILMS
  
  
   SELECT * FROM MOST_POPULAR_FILMS
  EXCEPT
  SELECT * FROM TOP_RATED_FILMS;
  
  
      title        | release_year
--------------------+--------------
 An American Pickle |         2020
 Greyhound          |         2020
(2 rows)
 ---------------------------------------------------------------------------------------------------------------------------------------- 
  
  SELECT SUM(
  CASE WHEN RENTAL_RATE=0.99 THEN 1 ELSE 0 END )
  AS "ECONOMY",
   SUM(
  CASE WHEN RENTAL_RATE=2.99 THEN 1 ELSE 0 END )
  AS "MASS",
   SUM(
  CASE WHEN RENTAL_RATE=4.99 THEN 1 ELSE 0 END )
  AS "PREMIUM" FROM FILM;
  
   ECONOMY | MASS | PREMIUM
---------+------+---------
     341 |  323 |     336
(1 row)

  ----------------------------------------------------------------------------------------------------------------------------------------
  
  SELECT TITLE,RATING,
  CASE RATING 
   WHEN 'G' THEN 'GENERAL AUDIENCES'
   WHEN 'PG' THEN 'PARENTAL GUIDANCE SUGGESTED'
   WHEN 'PG-13' THEN 'PARENTS STRONGLY CAUTIONED'
   WHEN 'R' THEN 'RESTRICTED'
   WHEN 'NC-17' THEN 'ADULTS ONLY'
   END RATING_DESCRIPTION
   FROM FILM;
   
   
     title            | rating |     rating_description
-----------------------------+--------+-----------------------------
 Chamber Italian             | NC-17  | ADULTS ONLY
 Grosse Wonderful            | R      | RESTRICTED
 Airport Pollock             | R      | RESTRICTED
 Bright Encounters           | PG-13  | PARENTS STRONGLY CAUTIONED
 Academy Dinosaur            | PG     | PARENTAL GUIDANCE SUGGESTED
 Ace Goldfinger              | G      | GENERAL AUDIENCES
 Adaptation Holes            | NC-17  | ADULTS ONLY
 Affair Prejudice            | G      | GENERAL AUDIENCES
 African Egg                 | G      | GENERAL AUDIENCES
 Agent Truman                | PG     | PARENTAL GUIDANCE SUGGESTED
 Airplane Sierra             | PG-13  | PARENTS STRONGLY CAUTIONED
 Alabama Devil               | PG-13  | PARENTS STRONGLY CAUTIONED
 Aladdin Calendar            | NC-17  | ADULTS ONLY
 Alamo Videotape             | G      | GENERAL AUDIENCES
 Alaska Phantom              | PG     | PARENTAL GUIDANCE SUGGESTED
 Date Speed                  | R      | RESTRICTED
 Ali Forever                 | PG     | PARENTAL GUIDANCE SUGGESTED
 Alice Fantasia              | NC-17  | ADULTS ONLY
 Alien Center                | NC-17  | ADULTS ONLY
 Alley Evolution             | NC-17  | ADULTS ONLY
 Alone Trip                  | R      | RESTRICTED
 Alter Victory               | PG-13  | PARENTS STRONGLY CAUTIONED
 Amadeus Holy                | PG     | PARENTAL GUIDANCE SUGGESTED
 Amelie Hellfighters         | R      | RESTRICTED
 American Circus             | R      | RESTRICTED
 Amistad Midsummer           | G      | GENERAL AUDIENCES
 Anaconda Confessions        | R      | RESTRICTED
 Analyze Hoosiers            | R      | RESTRICTED
 Angels Life                 | G      | GENERAL AUDIENCES
 Annie Identity              | G      | GENERAL AUDIENCES
 Anonymous Human             | NC-17  | ADULTS ONLY
 Anthem Luke                 | PG-13  | PARENTS STRONGLY CAUTIONED
 Antitrust Tomatoes          | NC-17  | ADULTS ONLY
 Anything Savannah           | R      | RESTRICTED
 Apache Divine               | NC-17  | ADULTS ONLY
 Apocalypse Flamingos        | R      | RESTRICTED
 Apollo Teen                 | PG-13  | PARENTS STRONGLY CAUTIONED
 Arabia Dogma                | NC-17  | ADULTS ONLY
 Arachnophobia Rollercoaster | PG-13  | PARENTS STRONGLY CAUTIONED
 Argonauts Town              | PG-13  | PARENTS STRONGLY CAUTIONED
 Arizona Bang                | PG     | PARENTAL GUIDANCE SUGGESTED
-- More  --
 
  ------------------------------------------------------------------------------------------------------------------------------------------- 
  
  SELECT SUM(
  CASE  
   WHEN RATING='G' THEN  1 ELSE 0 END )
   AS "GENERAL AUDIENCES",
   SUM(
  CASE  
   WHEN RATING='PG' THEN  1 ELSE 0 END )
   AS "PARENTAL GUIDANCE SUGGESTED",
   SUM(
  CASE  
   WHEN RATING='PG-13' THEN  1 ELSE 0 END )
   AS "PARENTS STRONGLY CAUTIONED",
   SUM(
  CASE  
   WHEN RATING='R' THEN  1 ELSE 0 END )
   AS "RESTRICTED",
   SUM(
  CASE  
   WHEN RATING='NC-17' THEN  1 ELSE 0 END )
   AS  "ADULTS ONLY"
    
   FROM FILM; 
  
  
   GENERAL AUDIENCES | PARENTAL GUIDANCE SUGGESTED | PARENTS STRONGLY CAUTIONED | RESTRICTED | ADULTS ONLY
-------------------+-----------------------------+----------------------------+------------+-------------
               178 |                         194 |                        223 |        195 |         210
(1 row)
  
  
  -------------------------------------------------------------------------------------------------------------------------------------------
  CREATE TABLE IF NOT EXISTS ACCOUNTS(
  USER_ID SERIAL PRIMARY KEY,
  USERNAME VARCHAR(50) UNIQUE NOT NULL,
  PASSWORD VARCHAR(50)  NOT NULL,
  EMAIL VARCHAR(255) UNIQUE NOT NULL,
  CREATED_AT TIMESTAMP NOT NULL,
  LAST_LOGIN TIMESTAMP);
  
  
  
  //COPY TABLE WITH FEW COLUMN
  
  SELECT FILM_ID,TITLE,RENTAL_RATE
  INTO TABLE FILM_R FROM FILM
  WHERE RATING='R' AND RENTAL_DURATION=5
  ORDER BY TITLE;
  
  
  CREATE TABLE ACTION_FILM AS
  SELECT FILM_ID,TITLE,RELEASE_YEAR,LENGTH,RATING
  FROM FILM INNER JOIN FILM_CATEGORY USING (FILM_ID)
  WHERE CATEGORY_ID=1;
  
  
  CREATE TABLE FRUITS(
  ID SERIAL PRIMARY KEY,
  NAME VARCHAR NOT NULL);
  
  
  INSERT INTO FRUITS(NAME) VALUES ('APPLE');
  INSERT INTO FRUITS(NAME) VALUES ('ORANGE');
  INSERT INTO FRUITS(ID,NAME) VALUES (DEFAULT,'GRAPES');
  
  
  SELECT CURRVAL(PG_GET_SERIAL_SEQUENCE('FRUITS',ID));
  
  INSERT INTO FRUITS(NAME) VALUES ('JACKFRUIT') RETURNING ID;
  
   id
----
  4
(1 row)


CREATE SEQUENCE MYSEQUENCE
INCREMENT 5
START 100;
  
  SELECT NEXTVAL('MYSEQUENCE');
  
  
   nextval
---------
     100
(1 row)


dvdrental=#  SELECT NEXTVAL('MYSEQUENCE');
 nextval
---------
     105
(1 row)


dvdrental=#  SELECT NEXTVAL('MYSEQUENCE');
 nextval
---------
     110
(1 row)

----------------------------------------------------------------
CREATE SEQUENCE THREE
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE;
  
  SELECT NEXTVAL('THREE');
dvdrental=#     SELECT NEXTVAL('THREE');
 nextval
---------
       3
(1 row)


dvdrental=#     SELECT NEXTVAL('THREE');
 nextval
---------
       2
(1 row)


dvdrental=#     SELECT NEXTVAL('THREE');
 nextval
---------
       1
(1 row)


dvdrental=#     SELECT NEXTVAL('THREE');
 nextval
---------
       3
(1 row)

=========================================================================================================================

CREATE TABLE ORDER_DETAILS(
ORDER_ID SERIAL,
ITEM_ID INT NOT NULL,
ITEM_TEXT VARCHAR NOT NULL,
PRICE DEC(10,2) NOT NULL,
PRIMARY KEY(ORDER_ID,ITEM_ID));




CREATE TABLE ORDER_DETAILS(
ORDER_ID SERIAL,
ITEM_ID INT NOT NULL,
ITEM_TEXT VARCHAR NOT NULL,
PRICE DEC(10,2) NOT NULL,
PRIMARY KEY(ORDER_ID,ITEM_ID));


INSERT INTO ORDER_DETAILS(ORDER_ID,ITEM_ID,ITEM_TEXT,PRICE)
 VALUES 
 (100,NEXTVAL('ORDER_ITEM_ID'),'MIN WIFI',100),
 (100,NEXTVAL('ORDER_ITEM_ID'),'ANDROID',100),
 (100,NEXTVAL('ORDER_ITEM_ID'),'SPEAKER',100),
 (100,NEXTVAL('ORDER_ITEM_ID'),'DVD PLAYER',100);
  
  
  -----------------------------------------------------
  CREATE TABLE COLOR(
  COLOR_ID INT GENERATED BY DEFAULT AS IDENTITY
  (START WITH 10 INCREMENT BY 10),
  COLOR_NAME VARCHAR NOT NULL);
  
  
  INSERT INTO COLOR(COLOR_NAME) VALUES ('RED');
  INSERT INTO COLOR(COLOR_NAME) VALUES ('PURPLE');
  
  
  
    SELECT * FROM COLOR;
 color_id | color_name
----------+------------
       10 | RED
       20 | PURPLE
(2 rows)



===============================================================================================================================

CREATE TABLE CONTACTS(
ID SERIAL PRIMARY KEY,
FIRST_NAME VARCHAR(50) NOT NULL,
LAST_NAME VARCHAR(50) NOT NULL,
FULL_NAME VARCHAR(101) GENERATED ALWAYS AS (FIRST_NAME ||''|| LAST_NAME) STORED,
EMAIL VARCHAR(300) UNIQUE);
  
  
  INSERT INTO CONTACTS(FIRST_NAME,LAST_NAME,EMAIL)
  VALUES('SHIVA','LINGAM','SIVA@GMAIL.COM');
  
   INSERT INTO CONTACTS(FIRST_NAME,LAST_NAME,EMAIL)
  VALUES('ARJUN','DAS','ARJUN@GMAIL.COM');
  
  
  
dvdrental=# SELECT * FROM CONTACTS;
 id | first_name | last_name |  full_name  |      email
----+------------+-----------+-------------+-----------------
  1 | SHIVA      | LINGAM    | SHIVALINGAM | SIVA@GMAIL.COM
  2 | ARJUN      | DAS       | ARJUNDAS    | ARJUN@GMAIL.COM
(2 rows)

