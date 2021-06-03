-- Simple Databse Structure
-- With only a single table 
-- For beginners in SQL 
-- Contains basic Instructions for Beginners in SQL
CREATE TABLE studentS(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
 ) ;

DESCRIBE studentS ;

-- Delete the table
DROP TABLE studentS ;

-- Add column to a table
ALTER TABLE studentS ADD gpa DECIMAL(3,2) ;
INSERT INTO studentS VALUES(2,'Kate','Sociology') ;

-- Display all columns on the table 
SELECT *FROM studentS ;

--Insert elements into a table 
INSERT INTO studentS(name,major) VALUES('Jack', 'Biology') ;
INSERT INTO studentS(name,major) VALUES('Kate', 'Sociology') ;
INSERT INTO studentS(student_id,name) VALUES(3,'Claire') ;
INSERT INTO studentS(student_id, name) VALUES(1,'Jack') ;
INSERT INTO studentS VALUES(2, 'Kate', 'Sociolog') ;
INSERT INTO studentS VALUES(3, 'Yeno', "Chemistry") ;
INSERT INTO studentS VALUES(4, 'Jack', 'Biology') ;
INSERT INTO studentS VALUES(5, 'Mike', 'Computer Science') ;

-- Update elements from table
UPDATE studentS
SET major = 'Biochemistry'
WHERE major = "Biology" OR  major = 'Computer Science';     -- Setting different conditions 

UPDATE studentS
SET name = 'Tom' , major = 'undecided'
WHERE student_id = 1 ;

UPDATE studentS 
SET major = 'undecided' ;

-- Delete elements from table
DELETE FROM studentS
WHERE student_id = 3 ;

-- Star means every column 
SELECT name,major
FROM studentS 
-- Order elements by name
ORDER BY name;

--Order elements of the table in descending order student_id 
SELECT name, major, student_id 
FROM studentS
ORDER BY student_id DESC ;

--Order elements in Asceding order by name
SELECT *FROM studentS 
ORDER BY name ASC;

--Order elements first by name in ascending and student_id in descending
SELECT *FROM studentS
Order BY name ASC, student_id DESC ;

UPDATE studentS
SET name = 'Jack'
WHERE student_id = 2 ;

--Selects students with a student_id of 2
SELECT *
FROM studentS
WHERE student_id = 2 ;

--Selects only 2 students from a table
SELECT * 
FROM studentS
LIMIT 2 ;

--Selects at most 2 students with the name Jack
SELECT *
FROM studentS
WHERE name = "Jack"
ORDER  BY student_id DESC
LIMIT 2 ;

-- Note WHERE can be used with > , < , <=, >= , <> , AND , OR  

--Selects students with a student_id >= 3
SELECT name, student_id
FROM studentS
WHERE student_id >= 3 ;

-- Select students with an id of 2 or 3
SELECT *
FROM studentS 
WHERE student_id = 3 OR student_id = 2; 

--Selects students with the names listed in the brackets
SELECT* 
FROM studentS
WHERE name IN('Jack','Tom', 'Mike') AND student_id <> 4 ;