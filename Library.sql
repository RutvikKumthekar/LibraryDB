CREATE DATABASE Library;

USE library;

-- Create Athors table
CREATE TABLE Authors(
	AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL
);

-- Create Books table
CREATE TABLE Books(
	BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    PublishedYear INT 
);

-- Create Members tables
CREATE TABLE Members(
	MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    JoinDate DATE DEFAULT (CURRENT_DATE)
);

-- Create BookAuthors (Many-to-many between Books and Authors)
CREATE TABLE BookAuthors(
	BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY(BookID) REFERENCES Books(BookID) ON DELETE CASCADE,
    FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID) ON DELETE CASCADE
);

-- Create Loan table
CREATE TABLE Loans(
	LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    LoanDate DATE NOT NULL DEFAULT (CURRENT_DATE),
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);