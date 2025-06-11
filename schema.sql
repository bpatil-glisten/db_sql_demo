-- Create the database (optional, based on context)
CREATE DATABASE IF NOT EXISTS AccessDB;
USE AccessDB;

-- Table: dbowner
CREATE TABLE IF NOT EXISTS dbowner (
    OwnerID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table: dbreader
CREATE TABLE IF NOT EXISTS dbreader (
    ReaderID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    OwnerID INT,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (OwnerID) REFERENCES dbowner(OwnerID)
        ON DELETE SET NULL
);

