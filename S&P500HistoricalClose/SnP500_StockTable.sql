-- This SQL file was authored by: Kyle Shanahan
-- This program takes a small iteration of the S & P 500 stocks and compiles them into a table to be queried
-- The comments indicating sample data being inserted are by Stock Ticker. 
-- The list of stock companies used are:
-- (JNJ) Johnson and Johnson, one of the biggest drug and pharmacuetical companies in the United States
-- (V) Visa, a payment processing technology company
-- (PG) Proctor and Gamble, a consumer health product company
-- (UNH) United Health Group, a large healthcare company
-- (HD) Home Depot, a consumer home improvement and construction material company

-- Create table for S&P 500 stocks
INSERT INTO sp500_stocks (symbol, company_name, sector, industry, exchange)
VALUES 
    ('AAPL', 'Apple Inc.', 'Technology', 'Consumer Electronics', 'NASDAQ'),
    ('MSFT', 'Microsoft Corporation', 'Technology', 'Software—Infrastructure', 'NASDAQ'),
    ('AMZN', 'Amazon.com Inc.', 'Consumer Cyclical', 'Internet Retail', 'NASDAQ'),
    ('GOOGL', 'Alphabet Inc. Class A', 'Communication Services', 'Internet Content & Information', 'NASDAQ'),
    ('BRK.B', 'Berkshire Hathaway Inc. Class B', 'Financial Services', 'Insurance—Diversified', 'NYSE'),
    ('JNJ', 'Johnson & Johnson', 'Healthcare', 'Drug Manufacturers—General', 'NYSE'),
    ('V', 'Visa Inc. Class A', 'Financial Services', 'Credit Services', 'NYSE'),
    ('PG', 'Procter & Gamble Company', 'Consumer Defensive', 'Household & Personal Products', 'NYSE'),
    ('UNH', 'UnitedHealth Group Incorporated', 'Healthcare', 'Healthcare Plans', 'NYSE'),
    ('HD', 'The Home Depot Inc.', 'Consumer Cyclical', 'Home Improvement Retail', 'NYSE'),
    ;

-- Insert sample stock data for JNJ
INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (6, '2024-02-10', 150.20, 152.50, 149.75, 151.90, 3000000),
    (6, '2024-02-11', 152.00, 155.75, 151.00, 154.20, 3200000),
    ;

-- Insert sample stock data for V
INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (7, '2024-02-10', 210.50, 215.75, 209.25, 214.80, 2000000),
    (7, '2024-02-11', 215.00, 220.75, 214.00, 219.20, 2200000),
    ;

-- Insert sample stock data for PG
INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (8, '2024-02-10', 120.50, 125.75, 119.25, 124.80, 1800000),
    (8, '2024-02-11', 125.00, 130.75, 124.00, 129.20, 1900000),
    ;

-- Insert sample stock data for UNH
INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (9, '2024-02-10', 340.50, 345.75, 339.25, 344.80, 1500000),
    (9, '2024-02-11', 345.00, 350.75, 344.00, 349.20, 1600000),
    ;

-- Insert sample stock data for HD
INSERT INTO stock_data (stock_id, date, open_price, high_price, low_price, close_price, volume)
VALUES
    (10, '2024-02-10', 400.50, 405.75, 399.25, 404.80, 1300000),
    (10, '2024-02-11', 405.00, 410.75, 404.00, 409.20, 1400000)
    ;
