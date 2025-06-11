-- Table: dbowner
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'dbowner')
BEGIN
    CREATE TABLE dbowner (
        OwnerID INT PRIMARY KEY IDENTITY(1,1),
        Username NVARCHAR(100) NOT NULL,
        Email NVARCHAR(150) NOT NULL,
        CreatedAt DATETIME DEFAULT GETDATE()
    );
END;

-- Table: dbreader
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'dbreader')
BEGIN
    CREATE TABLE dbreader (
        ReaderID INT PRIMARY KEY IDENTITY(1,1),
        Username NVARCHAR(100) NOT NULL,
        Email NVARCHAR(150) NOT NULL,
        OwnerID INT,
        CreatedAt DATETIME DEFAULT GETDATE(),
        FOREIGN KEY (OwnerID) REFERENCES dbowner(OwnerID) ON DELETE SET NULL
    );
END;

SELECT 'Schema created successfully!' AS Message;
