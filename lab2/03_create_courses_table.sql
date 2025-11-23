/*
	Creator: Jayda H
    File Name: 03_create_courses_table.sql
    Date: Sep 30, 2025
    Description: This script will create the courses table
    Code: INFT2100
*/
DROP TABLE IF EXISTS courses CASCADE;

CREATE TABLE courses(
    course_code VARCHAR(8) PRIMARY KEY,
    course_description VARCHAR(225)
);

SELECT * FROM courses;