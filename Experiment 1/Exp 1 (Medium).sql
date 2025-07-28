USE EXP1;

CREATE TABLE tbl_depart (
    depart_id INT PRIMARY KEY,
    depart_name VARCHAR(50)
);

CREATE TABLE tbl_course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    dep_id INT FOREIGN KEY REFERENCES tbl_depart(depart_id)
);

-- INSERT data for the departments
INSERT INTO tbl_depart (depart_id, depart_name) VALUES
(1, 'Artificial Intelligence'),
(2, 'Computer Science'),
(3, 'Electronics and Communication'),
(4, 'Mechanical Engineering');

-- INSERT data for the courses, linking them to departments
INSERT INTO tbl_course (course_id, course_name, dep_id) VALUES
(1, 'Cloud Computing', 1),
(2, 'Database Management and Administration', 1),
(3, 'Data Structures and Algorithms', 1),
(4, 'Advanced Mathematics', 2),
(5, 'Database Management Systems', 2),
(6, 'Computer Networks', 3),
(7, 'Quality Management and Production', 4),
(8, 'Probability and Statistics', 2),
(9, 'Signal Processing and Design', 3),
(10, 'Embedded Systems', 3);

-- SELECT department names that have more than 2 courses associated with them
SELECT d.depart_name AS [Department Name]
FROM tbl_depart AS d
INNER JOIN
tbl_course AS c
ON d.depart_id = c.dep_id
GROUP BY d.depart_name
HAVING COUNT(d.depart_id) > 2;
