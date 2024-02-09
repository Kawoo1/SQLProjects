-- This program was authored by: Kyle Shanahan
-- The program is an SQL exercise that does the following:
-- 1) Creates a database named "Library".
-- 2) Creates three tables: "Books", "Members", and "Borrowings".
-- 3) Inserts sample data into the "Books" and "Members" tables.
-- 4) Inserts some sample records that are borrowed into the "Borrowings" table.

CREATE DATABASE IF NOT EXISTS Library;
USE Library;

CREATE TABLE IF NOT EXISTS Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    PublicationYear INT,
    ISBN VARCHAR(20),
    Quantity INT NOT NULL DEFAULT 1
);

-- Table for members
CREATE TABLE IF NOT EXISTS Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    JoinDate DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Table for borrowing records
CREATE TABLE IF NOT EXISTS Borrowings (
    BorrowingID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE NOT NULL DEFAULT CURRENT_DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Insert some sample data into the Books table
INSERT INTO Books (Title, Author, Genre, PublicationYear, ISBN, Quantity) VALUES
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, '9780061120084', 3),
('1984', 'George Orwell', 'Dystopian', 1949, '9780451524935', 2),
('Pride and Prejudice', 'Jane Austen', 'Romance', 1813, '9780141439518', 4);

-- Insert some sample data into the Members table
INSERT INTO Members (Name, Email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com');

-- Insert some sample borrowing records
INSERT INTO Borrowings (MemberID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, '2024-02-01', '2024-02-15'),
(2, 2, '2024-02-03', NULL);
