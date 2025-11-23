/*
	Creator: Jayda H
    File Name: 04_create_marks_table.sql
    Date: Sep 30, 2025
    Description: This script will create the marks table
    Code: INFT2100
*/
DROP TABLE IF EXISTS marks;

CREATE TABLE marks(
    student_id INT REFERENCES students(student_id),
    course_code VARCHAR(8) REFERENCES courses(course_code),
    final_mark INT CHECK (final_mark > -1 AND final_mark < 101),
    achieved_at DATE  
);

SELECT * FROM marks;