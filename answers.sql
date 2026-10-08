-- Step 1: Create the sample database and table structure
CREATE DATABASE IF NOT EXISTS salesDB;
USE salesDB;

CREATE TABLE IF NOT EXISTS customers (
    customerNumber INT PRIMARY KEY,
    customerName VARCHAR(100),
    phone VARCHAR(20)
);

-- Create the index first to test dropping it in Q1
CREATE INDEX IdxPhone ON customers(phone);


-- Question 1: Drop index IdxPhone from customers table
DROP INDEX IdxPhone ON customers;


-- Question 2: Create user 'bob' with password 'S$cu3r3!' on localhost
CREATE USER IF NOT EXISTS 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';


-- Question 3: Grant INSERT privilege on salesDB to user 'bob'
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';
FLUSH PRIVILEGES;


-- Question 4: Change password for user 'bob' to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
FLUSH PRIVILEGES;