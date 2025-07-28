CREATE DATABASE EXP1;
USE EXP1;

CREATE TABLE TBL_AUTHOR (
	"Author ID" INT PRIMARY KEY,
	"Name" VARCHAR(20),
	"Country" VARCHAR(20)
);

CREATE TABLE TBL_BOOK (
	"Book ID" INT PRIMARY KEY,
	"Book Name" VARCHAR(20),
	"Author ID" INT FOREIGN KEY REFERENCES TBL_AUTHOR("Author ID")
);

-- INSERT new authors into the tbl_author table
INSERT INTO tbl_author ([Author ID], Name, Country) VALUES
(5, 'Alice', 'Japan'),
(6, 'Frank', 'Canada'),
(7, 'Carla', 'Mexico'),
(8, 'David', 'Australia'),
(9, 'Eve', 'Brazil'),
(10, 'Bob', 'China');


-- INSERT new books into the tbl_book table
INSERT INTO tbl_book ([Book ID], [Book Name], [Author ID]) VALUES
(6, 'The Lost City', 5),
(7, 'Stars of the North', 6),
(8, 'Sunset Serenade', 8),
(9, 'The Jungle Mystery', 9),
(10, 'Code Breaker', 7),
(11, 'Silent Whispers', 5),
(12, 'Ocean''s Call', 10),
(13, 'A Whale''s Tale', 6);

-- Return Inner Join for existing authors.
SELECT B.[Book Name], A.Name, A.Country
from
TBL_AUTHOR as A
INNER JOIN
TBL_BOOK as B
on a.[Author ID] = b.[Author ID];