CREATE DATABASE School;
USE School GO

CREATE TABLE SStudent (
    StudentID INT PRIMARY KEY NOT NULL,
    StudentName VARCHAR(100) NOT NULL,
    StudentAge INT NULL,
    StudentGender VARCHAR(10) NOT NULL,
    DepartmentID INT NULL
);

CREATE TABLE SDepartment (
    DepartmentID INT PRIMARY KEY NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    DepartmentCapacity INT NULL
);

ALTER TABLE SStudent ADD CONSTRAINT StudDepRel FOREIGN KEY (DepartmentID) REFERENCES SDepartment(DepartmentID);

INSERT INTO SDepartment VALUES  (1, 'Ingles', 100), 
                                (2, 'Matematica', 80), 
                                (3, 'Historia', 70), 
                                (4, 'Frances', 90),
                                (5, 'Geografia', 100),
                                (6, 'Desenho', 150),
                                (7, 'Arquitetura', 120);

INSERT INTO SStudent VALUES (1, 'Alice', 21, 'Homem', 2), 
                            (2, 'Alfred', 20, 'Homem', 2),
                            (3, 'Henry', 19, 'Homem', 3),
                            (4, 'Jacobs', 22, 'Homem', 5),
                            (5, 'Bob', 20, 'Homem', 4),
                            (6, 'Shane', 22, 'Homem', 4),
                            (7, 'Linda', 24, 'Mulher', 4);
