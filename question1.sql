-- Create the database
CREATE DATABASE LibraryDB;

-- Use the database
USE LibraryDB;

-- Authors Table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    genre VARCHAR(50),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
);

-- Borrowings Table (Many-to-Many)
CREATE TABLE Borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Sample Data
INSERT INTO Authors (name, email) VALUES ('Chinua Achebe', 'achebe@example.com');
INSERT INTO Books (title, genre, author_id) VALUES ('Things Fall Apart', 'Historical', 1);
INSERT INTO Members (name, email) VALUES ('Brian K', 'brian@example.com');
INSERT INTO Borrowings (member_id, book_id, borrow_date) VALUES (1, 1, '2025-04-01');
