-- list all privileges for the MySQL users 'user_0d_1' and 'user_0d_2' on localhost

-- Step 1: Create 'user_0d_1' and grant all privileges
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Step 2: Create 'user_0d_2' and grant SELECT and INSERT privileges on a specific database
CREATE DATABASE IF NOT EXISTS user_2_db;
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';
GRANT SELECT, INSERT ON user_2_db.* TO 'user_0d_2'@'localhost';

-- Step 3: Apply changes
FLUSH PRIVILEGES;

-- Step 4: Display privileges for 'user_0d_1'
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Step 5: Display privileges for 'user_0d_2'
SHOW GRANTS FOR 'user_0d_2'@'localhost';
