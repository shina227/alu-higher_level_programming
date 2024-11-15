-- lists all privileges for users 'user_0d_1' and 'user_0d_2' on localhost

-- Ensure user_0d_1 and user_0d_2 exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Grant privileges to user_0d_1 (root-like privileges)
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Create database and grant specific privileges to user_0d_2
CREATE DATABASE IF NOT EXISTS user_2_db;
GRANT SELECT, INSERT ON user_2_db.* TO 'user_0d_2'@'localhost';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;

-- Display privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Display privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

