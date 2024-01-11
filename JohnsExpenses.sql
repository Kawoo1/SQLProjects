-- This simple SQL file will create a table to track "John's" expenses and calculate annual income
-- Authored by: Kyle Shanahan
-- Creates a table to track "John's" expenses
CREATE TABLE JohnExpenses (
    ExpenseID INT PRIMARY KEY,
    ExpenseType VARCHAR(255) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Frequency VARCHAR(50) NOT NULL
);

-- Insert the data for John's expenses 
INSERT INTO JohnExpenses (ExpenseID, ExpenseType, Amount, Frequency)
VALUES
    (1, 'Gas', 100.00, 'Monthly'),
    (2, 'Food', 50.00, 'Weekly'),
    (3, 'Rent', 1000.00, 'Monthly'),
    (4, 'Entertainment', 20.00, 'Monthly'),
    (5, 'Utilities', 60.00, 'Monthly'),
    (6, 'Car Payment', 120.00, 'Monthly');

-- Calculate annual income and insert into the table
DECLARE @AnnualIncome DECIMAL(10, 2);
SET @AnnualIncome = 25000.00;

INSERT INTO JohnExpenses (ExpenseID, ExpenseType, Amount, Frequency)
VALUES
    (7, 'Annual Income', @AnnualIncome, 'Yearly');

-- Display John's expenses
SELECT * FROM JohnExpenses;
