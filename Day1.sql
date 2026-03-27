create table students (
studend_id INT PRIMARY KEY,
NAME VARCHAR(50),
age INT,
COURSE VARCHAR(50)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    fee INT
);

CREATE TABLE Enrollments (
    enroll_id INT PRIMARY KEY,
    studend_id INT,
    course_id INT,
    FOREIGN KEY (studend_id) REFERENCES Students(studend_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES
(1, 'Rahul', 21, 'BCA'),
(2, 'Amit', 22, 'BBA'),
(3, 'Neha', 20, 'BCA');

INSERT INTO Courses VALUES
(101, 'Java', 5000),
(102, 'Python', 4000),
(103, 'SQL', 3000);

INSERT INTO Enrollments VALUES
(1, 1, 101),
(2, 1, 103),
(3, 2, 102),
(4, 3, 103);



SELECT s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.studend_id = e.studend_id
JOIN Courses c ON e.course_id = c.course_id;


SELECT s.name, SUM(c.fee) AS total_fee
FROM Students s
JOIN Enrollments e ON s.studend_id = e.studend_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.name;


SELECT s.name, COUNT(e.course_id) AS total_courses
FROM Students s
JOIN Enrollments e ON s.studend_id = e.studend_id
GROUP BY s.name
HAVING COUNT(e.course_id) > 1;

SELECT name
FROM Students
WHERE studend_id NOT IN (
    SELECT studend_id FROM Enrollments
);

CREATE VIEW Student_Fees AS
SELECT s.name, SUM(c.fee) AS total_fee
FROM Students s
JOIN Enrollments e ON s.studend_id = e.studend_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.name;