-- to create the MySQL user 'user_0d_1' with all privileges
-- If the user already exists, the script will not fail.

-- Step 1: Create the user if it does not exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- Step 2: Grant all privileges to the user
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Step 3: Apply the changes
FLUSH PRIVILEGES;
