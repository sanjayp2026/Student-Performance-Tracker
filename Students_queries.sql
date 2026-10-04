CREATE DATABASE StudentPerformanceTracker;

USE StudentPerformanceTracker;

CREATE TABLE Students
(
             StudentID VARCHAR(50),
             Name VARCHAR(50),
             Age INT,
             Course VARCHAR(50),
             Test1 INT,
             Test2 INT,
             Test3 INT
);

SHOW TABLES;

DESCRIBE Students;

INSERT INTO Students
VALUES      ('S001','Arjun Kumar',20,'Fullstack Developer',	78,	85,	90);

INSERT INTO Students
VALUES           
('S002','Priya Singh',19,'Data Analytics', 88, 92,	84),
('S003','Rahul Das', 21,'Digital Marketing',65,	70,	75),
('S004','Rajmohan', 20,	'Business Admin', 80, 76,82),
('S005','Karan Patel', 22,'Computer Science', 91,89,95),
('S006','Meera Nair',19,'Data Analytics',72,78,85),
('S007','Vikram Rao',21,'Web Developer',55,	68,	70),
('S008','Ananya Roy',20,'Cloud Computing',85,88,90),
('S009','Pradeep',25,'Python',75,87,54),
('S010', 'Dharshini', 23, 'Sql', 67, 75,63);

SELECT * FROM Students;

SELECT Name, Age 
FROM Students;

SELECT * FROM Students
WHERE StudentID = 'S004';

SELECT *
FROM Students
WHERE Course = 'Data Analytics';

SELECT * FROM Students
ORDER BY Age ASC;

SELECT * FROM Students
ORDER BY Age DESC;

SELECT Test1
FROM Students 
ORDER BY (Test1) DESC;

SELECT Test2
FROM Students
ORDER BY (Test2) ASC;

SELECT * FROM Students
LIMIT 6;

SELECT Course, Age, COUNT(*) AS Total
FROM Students
GROUP BY Course , Age;

SELECT Course,
	   Age,
	COUNT(*) AS Total_students
FROM Students
GROUP BY Course, Age
HAVING COUNT(*) <2;

SELECT COUNT(*)  AS Total_counts FROM Students;

SELECT MAX(Test2) AS High_mark FROM Students;

SELECT MIN(Test3) AS Lowest_mark FROM Students;

SELECT AVG(Test1) AS Average_mark FROM Students;

SELECT AVG(Test2) AS Average_mark FROM Students;

SELECT AVG(Test3) AS Average_mark FROM Students;

SELECT SUM(Test1) AS Total_mark FROM Students;

SELECT 
          SUM(Test1),
          SUM(Test2),
          SUM(Test3) 
FROM Students;

SELECT DISTINCT Course 
FROM Students;

SELECT * 
FROM Students
WHERE Course ='Data Analytics' 
AND Age <20;

SELECT * 
FROM Students
WHERE Course = 'Web Developer' OR 
Course = 'Sql';

SELECT * 
FROM Students
WHERE NOT Course = 'Data Analytics'
AND Age < 21 ;

SELECT * 
FROM Students
WHERE Age BETWEEN 22 AND 25;

SELECT * 
FROM Students 
WHERE Course IN ('Digital marketing', 'Web Developer');

SELECT * 
FROM Students 
WHERE Name LIKE "%R";

SELECT * 
FROM Students
WHERE Name LIKE "R%";

SELECT * 
FROM Students
WHERE Course LIKE "D%";

SELECT * 
FROM Students
WHERE Course LIKE "%g";