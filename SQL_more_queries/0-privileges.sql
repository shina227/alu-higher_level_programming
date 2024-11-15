-- This script checks for the existence of MySQL users
user_0d_1 and user_0d_2 on localhost
-- and lists their privileges.

-- Check if user_0d_1 exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'user_0d_1'
AND host = 'localhost') AS user_exists;

-- Check if user_0d_2 exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'user_0d_2'
AND host = 'localhost') AS user_exists;

-- Show grants for user_0d_1 if it exists
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Show grants for user_0d_2 if it exists
SHOW GRANTS FOR 'user_0d_2'@'localhost';
