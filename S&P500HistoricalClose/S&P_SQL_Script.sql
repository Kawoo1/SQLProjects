-- This code was authored by Kyle Shanahan
-- This program takes the historical data of the S&P500 dating back to 1945 and fills it into a table.
-- Create the table
CREATE TABLE sp500_history (
    date DATE,
    close_price DECIMAL(10, 2)
);

-- Insert Data
BULK INSERT sp500_history
FROM -- 'path_to_your_csv_file\sp500_data.csv' <--- This will be replaced with a path to a file in the "S&P500HistoricalClose" folder of the github repo after creation
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
