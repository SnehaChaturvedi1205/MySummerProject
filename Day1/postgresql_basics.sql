CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 16),
    gender VARCHAR(10),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


INSERT INTO department (dept_name) 
VALUES ('IT'), ('CP'), ('IOT'),('CSD');

SELECT * from department

INSERT INTO student (name, email, age, gender, dept_id)
VALUES 
('Honey', 'honey58@gmail.com', 21, 'Female', 1),
('Sakshi', 'sakshi@gmail.com', 21, 'Female', 3),
('Diya', 'diya@gmail.com', 21, 'Female', 3),
('Sneha', 'sneha@cvmu.edu.in', 21, 'Female', 2),
('Amee', 'amee@gmail.com', 21, 'Female', 1);

SELECT * from student

INSERT INTO course (course_name, dept_id)
VALUES ('ML', 1), ('DSV', 1),('CVIP', 1),('AWD', 1),('Compiler Design', 2);

SELECT * from course

SELECT s.name, s.email, d.dept_name
FROM student s
JOIN department d ON s.dept_id = d.dept_id;


SELECT * FROM student
ORDER BY name ASC,dept_id DESC;


SELECT s.name, d.dept_name
FROM student s LEFT JOIN department d 
ON s.dept_id = d.dept_id;


DELETE FROM student
WHERE name = 'honey';
SELECT * FROM student



SELECT * FROM student
WHERE name LIKE 'S%';

SELECT * FROM student
WHERE email LIKE '%gmail%';

TRUNCATE TABLE student;

