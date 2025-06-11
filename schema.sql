CREATE DATABASE IF NOT EXISTS CompanyDB;
USE CompanyDB;

CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    Position VARCHAR(100),
    HireDate DATE DEFAULT CURRENT_DATE
);

INSERT INTO Employees (FirstName, LastName, Email, Position)
VALUES
('Alice', 'Smith', 'alice.smith@example.com', 'Developer'),
('Bob', 'Johnson', 'bob.johnson@example.com', 'Manager');
