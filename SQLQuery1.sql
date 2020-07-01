/* create database Megadeth_Albums; */

USE Megadeth_Albums;
CREATE TABLE Megadeth_Albums
(
	Title varchar(50),
	Release_Date int,
	Rating int,
	Favorite_Song varchar(50),
);

INSERT INTO Megadeth_Albums
(Title, "Release_Date", Rating, Favorite_Song)
	VALUES (
	'Criptic Writings', 1997, 8, 'Have Cool, Will Travel'
	),
	(
	'Countdown to Extinction', 1992, 9, 'Hangar 18'
	),
	(
	'Dystopia', 2017, 7, 'The Threat is Real'
	);


SELECT TOP (50) [Title],[Release_Date] ,[Rating] ,[Favorite_Song]
  FROM [Megadeth_Albums].[dbo].[Megadeth_Albums];

/* Delete duplicates by copying to temporary table, 
 deleting the current table, then reinstating the 
 temporary table's values     */
SELECT DISTINCT * INTO temp FROM Megadeth_Albums
DELETE FROM Megadeth_Albums
INSERT INTO Megadeth_Albums
SELECT * FROM temp
	DROP TABLE temp
SELECT * FROM Megadeth_Albums;