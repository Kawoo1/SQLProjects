-- This SQL code creates the table to store the data of the most popular names for girls and boys in 2023
-- Authored by: Kyle Shanahan
CREATE TABLE PopularNames (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    gender ENUM('boy', 'girl'),
    rank INT
);
