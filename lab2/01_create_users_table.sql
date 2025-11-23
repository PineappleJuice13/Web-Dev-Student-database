/*
    Creator: Jayda H
    File Name: 01_create_users_table.sql
    Date: Sep 26, 2025
    Description: This script will create the users table
    Code: INFT2100
*/

-- Drops table and other objects that depend on them
DROP TABLE IF EXISTS users CASCADE;
DROP SEQUENCE IF EXISTS users_id_seq;

CREATE SEQUENCE users_id_seq START 100900000;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE users(
    user_id INT PRIMARY KEY DEFAULT nextval('users_id_seq'),
    first_name VARCHAR(255), 
    last_name VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    birth_date DATE,
    created_at DATE,
    last_access TIMESTAMP,
    password VARCHAR(255)  
);


SELECT * FROM users;

