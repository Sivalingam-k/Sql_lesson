
      ASSIGNTMENT:
	  ============
	  DROP TABLE  IF EXISTS STUDENT;
	  
 CREATE TABLE STUDENT(
 STUDENT_ID  SERIAL NOT NULL UNIQUE  PRIMARY KEY,
 STUDENT_NAME VARCHAR(100)  NOT NULL UNIQUE ,
 AGE INT NOT NULL,
 EMAIL VARCHAR(20)  NOT NULL UNIQUE,
 FRONTEND_MARK INT NOT NULL,
 BACKEND_MARK INT NOT NULL,
 STATUS VARCHAR(50) );
 





 
 <--!INSERTING-->
 INSERT INTO STUDENT ( STUDENT_NAME, AGE, EMAIL, FRONTEND_MARK, BACKEND_MARK, STATUS)
VALUES 
( 'SIVA', 22, 'siva@example.com', 88, 95, 'Pass'),
('BASIL', 21, 'basil@example.com', 78, 80, 'Pass'),
( 'SANDEEP', 21, 'sandeep@example.com', 90, 81, 'Pass'),
( 'DINESH', 21, 'dinesh@example.com', 72, 82, 'Pass'),
( 'EASHWAR', 21, 'eashwar@example.com', 68, 60, 'Pass'),
( 'RAM', 21, 'ram@example.com', 68, 70, 'Pass'),
( 'RAVI', 23, 'ravi@example.com', 92, 95, 'Pass');

<!--STUDENT TABLE-->

 student_id | student_name | age |        email        | frontend_mark | backend_mark | status
------------+--------------+-----+---------------------+---------------+--------------+--------
          1 | SIVA         |  22 | siva@example.com    |            88 |           95 | Pass
          2 | BASIL        |  21 | basil@example.com   |            78 |           80 | Pass
          3 | SANDEEP      |  21 | sandeep@example.com |            90 |           81 | Pass
          4 | DINESH       |  21 | dinesh@example.com  |            72 |           82 | Pass
          5 | EASHWAR      |  21 | eashwar@example.com |            68 |           60 | Pass
          6 | RAM          |  21 | ram@example.com     |            68 |           70 | Pass
          7 | RAVI         |  23 | ravi@example.com    |            92 |           95 | Pass
        
(7 rows)


 
CREATE TABLE COURSES (
COURSES_ID  SERIAL NOT NULL UNIQUE PRIMARY KEY,
COURSE_NAME VARCHAR(50) NOT NULL UNIQUE ,
CREDITS INT NOT NULL );

<--!INSERTING-->
 INSERT INTO COURSES ( COURSE_NAME, CREDITS)
VALUES 
( 'PYTHON',4),
( 'JAVA',5),
( 'REACT',3),
( '.NET',2),
( 'C++',4);

<!--TABLE-->

 courses_id | course_name | credits
------------+-------------+---------
          1 | PYTHON      |       4
          2 | JAVA        |       5
          3 | REACT       |       3
          4 | .NET        |       2
          5 | C++         |       4
(5 rows)




CREATE TABLE ENROLLMENT (
   ENROLLMENT_ID SERIAL NOT NULL UNIQUE  PRIMARY KEY,
    STUDENT_ID INT,
    COURSE_ID INT,
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID),
    FOREIGN KEY (COURSE_ID) REFERENCES COURSES(COURSES_ID)
);

<--!INSERTING-->
 INSERT INTO ENROLLMENT ( STUDENT_ID, COURSE_ID)
VALUES 
( 1,4),
( 1,5),
( 3,3),
( 2,2),
( 4,4);

<----TABLE--->

 enrollment_id | student_id | course_id
---------------+------------+-----------
             1 |          1 |         4
             2 |          1 |         5
             3 |          3 |         3
             4 |          2 |         2
             5 |          4 |         4
(5 rows)


QUERY 1: 
==========
(Insert a new student record with the following details:
Name: YourName
Age: YourAge
Email: YourEmail
Frontend-Mark: YourMark
Backend-Mark: YourMark
Status: NULL
)


 INSERT INTO STUDENT ( STUDENT_NAME, AGE, EMAIL, FRONTEND_MARK, BACKEND_MARK, STATUS)
VALUES 
( 'VICTOR', 23, 'victor@example.com', 100, 100, NULL);

 student_id | student_name | age |        email        | frontend_mark | backend_mark | status
------------+--------------+-----+---------------------+---------------+--------------+--------
          8 | VICTOR       |  23 | victor@example.com  |           100 |          100 |


QUERY 2:
====================
Retrieve the names of all students who are enrolled in the course titled 'JAVA'.



SELECT STUDENT_NAME
FROM STUDENT
WHERE STUDENT_ID IN (
    SELECT STUDENT_ID
    FROM ENROLLMENT
    WHERE COURSE_ID = (
        SELECT COURSES_ID
        FROM COURSES
        WHERE COURSE_NAME = 'JAVA'
    )
);


 student_name
--------------
 BASIL
(1 row)


QUERY 3:
============
Update the status of the student with the highest total (frontend_mark + backend_mark) mark to 'AWARDED'


UPDATE STUDENT
SET STATUS = 'AWARDED'
WHERE STUDENT_ID = (
    SELECT STUDENT_ID
    FROM STUDENT
    ORDER BY (FRONTEND_MARK + BACKEND_MARK) DESC
    LIMIT 1
);

 student_id | student_name | age |       email        | frontend_mark | backend_mark | status
------------+--------------+-----+--------------------+---------------+--------------+---------
          8 | VICTOR       |  23 | victor@example.com |           100 |          100 | AWARDED
(1 row)


QUERY 4:
-=======

Delete all courses that have no students enrolled.
 
DELETE FROM COURSES
WHERE COURSES_ID NOT IN (
    SELECT DISTINCT COURSES_ID
    FROM ENROLLMENT
);


courses_id | course_name | credits
------------+-------------+---------
          1 | PYTHON      |       4
          2 | JAVA        |       5
          3 | REACT       |       3
          4 | .NET        |       2
          5 | C++         |       4
(5 rows)


QUERY 5:
=============
Retrieve the names of students using a limit of 2, starting from the 3rd student.


SELECT STUDENT_NAME FROM STUDENT 
OFFSET 2
LIMIT 2 ;

student_name
--------------
 SANDEEP
 DINESH
(2 rows)


QUERY 6:
===========
Retrieve the course names and the number of students enrolled in each course.

SELECT C.COURSE_NAME, COUNT(E.STUDENT_ID) AS STUDENTS_ENROLLED
FROM COURSES C
LEFT JOIN ENROLLMENT E 
ON 
C.COURSES_ID = E.COURSE_ID
GROUP BY C.COURSE_NAME
ORDER BY C.COURSE_NAME;


 course_name | students_enrolled
-------------+-------------------
 .NET        |                 2
 C++         |                 1
 JAVA        |                 1
 PYTHON      |                 0
 REACT       |                 1
(5 rows)

 

QUERY 7:
============
Calculate and display the average age of all students.

SELECT AVG(AGE) AS AVREAGE_AGE FROM STUDENT;

  avreage_age
---------------------
 21.6250000000000000
(1 row)

QUERY 8:
============
Retrieve the names of students whose email addresses contain 'example.com'.


SELECT STUDENT_NAME FROM STUDENT
WHERE EMAIL LIKE '%example.com';

  student_name
--------------
 SIVA
 BASIL
 SANDEEP
 DINESH
 EASHWAR
 RAM
 RAVI
 VICTOR
(8 rows)