/*
	Creator: Jayda H
    File Name: 02_create_students_table
    Date: Sep 30, 2025
    Description: This script will create the students table
    Code: INFT2100
*/

DROP TABLE IF EXISTS students CASCADE;

CREATE TABLE students(
    student_id INT PRIMARY KEY REFERENCES users(user_id),
    program_code VARCHAR(255)

);

SELECT * FROM users user_id;