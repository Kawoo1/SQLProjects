-- This SQL file was authored by: Kyle Shanahan
-- This program takes a small iteration of the S & P 500 stocks and compiles them into a table to be queried

-- Create table for S&P 500 stocks
CREATE TABLE sp500_stocks (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(10) UNIQUE NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    sector VARCHAR(100),
    industry VARCHAR(100),
    exchange VARCHAR(50)
);

-- Create table for stock data
CREATE TABLE stock_data (
    id SERIAL PRIMARY KEY,
    stock_id INT REFERENCES sp500_stocks(id),
    date DATE NOT NULL,
    open_price DECIMAL(12, 2),
    high_price DECIMAL(12, 2),
    low_price DECIMAL(12, 2),
    close_price DECIMAL(12, 2),
    volume INT
);

-- Insert sample S&P 500 stock data
INSERT INTO sp500_stocks (symbol, company_name, sector, industry, exchange)
VALUES 
    ('AAPL', 'Apple Inc.', 'Technology', 'Consumer Electronics', 'NASDAQ'),
    ('MSFT', 'Microsoft Corporation', 'Technology', 'Software—Infrastructure', 'NASDAQ'),
    ('AMZN', 'Amazon.com Inc.', 'Consumer Cyclical', 'Internet Retail', 'NASDAQ'),
    ('GOOGL', 'Alphabet Inc. Class A', 'Communication Services', 'Internet Content & Information', 'NASDAQ'),
    ('BRK.B', 'Berkshire Hathaway Inc. Class B', 'Financial Services', 'Insurance—Diversified', 'NYSE'),
    -- Add more stocks as needed
    ;

-- Insert sample stock data for AAPL
INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (1, '2024-02-10', 160.50, 165.75, 160.25, 164.80, 5000000),
    (1, '2024-02-11', 164.00, 168.25, 163.50, 167.40, 5500000),
    -- Add more data for AAPL or other stocks as needed
    ;


INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (2, '2024-02-10', 300.20, 305.50, 299.75, 304.90, 4000000),
    (2, '2024-02-11', 305.00, 310.75, 304.00, 309.20, 4500000),
    ;

