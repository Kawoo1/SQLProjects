-- This SQL script creates a table named 'sales', inserts sales data into it, adds additional columns for calculated values, and sets placeholder values for those calculated columns. 
-- It prepares the table structure and initial data for further analysis and calculation. 
-- Centered around the country of origin, product sold, and the profit of the transaction.
CREATE TABLE sales (
    year INT,
    country VARCHAR(20),
    product VARCHAR(32),
    profit INT
);

-- This fills the table "sales" with product data including the following parameters:
-- year, country, product, and profit
INSERT INTO sales (year, country, product, profit) VALUES
(2000, 'Finland', 'Computer', 1500),
(2000, 'Finland', 'Phone', 100),
(2001, 'Finland', 'Phone', 10),

-- Add columns for total_profit, country_profit, and country_average
ALTER TABLE sales ADD total_profit INT;
ALTER TABLE sales ADD country_profit INT;
ALTER TABLE sales ADD country_average INT;

-- Set placeholder values for total_profit, country_profit, and country_average
UPDATE sales 
SET 
    total_profit = '[Total]',
    country_profit = '[Profit]',
    country_average = '[Average]';
