/*
	Creator: Jayda H
    File Name: 09_crud_examples.sql
    Date: Oct 06, 2025
    Description: This script will populate the marks table
    Code: INFT2100
*/

-- 1) Inserting 3 new users into user table
INSERT INTO users 
    (user_id, 
    first_name, 
    last_name, email, 
    birth_date, 
    created_at, 
    last_access, 
    password)

VALUES 
    (100912345,
    'Travis',
    'Touchdown',
    'travis.touchdown@gmail.com',
    '2002-10-13',
    '2024-09-06',
    '2025-10-06 10:10:10',
    crypt('NoMoreHeros13', gen_salt('bf'))
    ),
    
    (100988200,
    'Peter',
    'Parker',
    'spiderman@dcmail.ca',
    '1998-08-10',
    '2010-08-13',
    '2025-10-24 17:11:20',
    crypt('SuperCoolGuy13', gen_salt('bf'))
    ),
    
    (100950601,
    'Naomi',
    'Hopper',
    'hopper.naomi@hotmail.com',
    '2000-12-18',
    '2019-08-25',
    '2025-10-01 13:45:01',
    crypt('Supercoolpassword21', gen_salt('bf'))
    );

-- -- 2) Retrieve all users information
SELECT * FROM users;

-- -- 3) Retrieve users information based on email
SELECT * FROM users
WHERE email LIKE '%dcmail%';

-- -- 4) Retrieve users information based on user_id
SELECT first_name, last_name, email
FROM users 
WHERE user_id > 100000000;

-- -- 5) Retrieve users information and order by last_access
SELECT first_name, last_name, user_id, created_at, last_access
FROM users
ORDER BY last_access ASC;

-- UPDATE --
-- -- 6) Update last_access based on user_id
UPDATE users
SET last_access = '2025-10-24 20:00:00'
where user_id = '100988200';

SELECT user_id, first_name, last_access
FROM users
WHERE user_id = '100988200';

-- 7) Update first_name based on email
UPDATE users
SET first_name = 'Miles'
WHERE email = 'spiderman@dcmail.ca';

SELECT user_id, first_name, email
FROM users
WHERE email = 'spiderman@dcmail.ca';

-- DELETE --
-- 9) Delete user based on user_id
SELECT * FROM users
WHERE user_id = '100950601';

DELETE FROM users
WHERE user_id = '100950601';

-- -- 10)
SELECT * FROM users
WHERE first_name = 'Travis';

DELETE FROM users
WHERE first_name = 'Travis' AND last_name = 'Touchdown';

-- 11) Insert a new course into course table
INSERT INTO courses (
    course_code,
    course_description
	
) VALUES
    ('ART101', 'Art class');

SELECT * FROM courses;

-- 12) Select students with marks greater than 80
SELECT * FROM marks
WHERE final_mark > 80;

-- 13) Update a course desciption
SELECT * FROM courses;

UPDATE courses 
SET course_description = 'New description'
WHERE course_code = 'GNED0000';

-- 14) Delete a student based on student_id
SELECT * FROM students
WHERE student_id = '1';

-- Have to delete marks first because ir references students
DELETE FROM marks
WHERE student_id = '1';

DELETE FROM students
WHERE student_id = '1'
