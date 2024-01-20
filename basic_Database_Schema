-- This is a basic database schema.
-- Authored by: Kyle Shanahan


-- Create the users table, contents to include: user, username, email, birthdate and registration date
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    birthdate DATE,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the orders table, contents to include: order id, user id, order date, and total amount
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
