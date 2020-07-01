/* create database Megadeth_Albums; */

USE Megadeth_Albums;

/* SQL Server doesn't have 'create table if not exist' for some weird reason...
so this function checks to see if my Megadeth_Albums table exists or not before attempting
to create it */

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Megadeth_Albums' and xtype='U')
	CREATE TABLE Megadeth_Albums
	(
		Title varchar(50),
		Release_Date int,
		Rating int,
		Favorite_Song varchar(50),
	)
GO

/* Table values */
INSERT INTO Megadeth_Albums
(Title, "Release_Date", Rating, Favorite_Song)
	VALUES (
	'Criptic Writings', 1997, 9, 'Have Cool, Will Travel'
	),
	('Countdown to Extinction', 1992, 9, 'Foreclosure of a Dream'
	),
	('Dystopia', 2017, 7, 'The Threat is Real'
	),
	('Killing Is My Business... and Business Is Good!', 1985, 3, 'Last Rites/Loved to Death'
	),
	('Peace Sells... but Who''s Buying?', 1986, 4, 'Peace Sells... but Who''s Buying?'
	),
	('So Far, So Good... So What!', 1988, 5, 'In My Darkest Hours'
	),
	('Rust in Peace', 1990, 10, 'Hangar 18'
	),
	('Youthanasia', 1994, 5, NULL
	),
	('Risk', 1999, 1, NULL
	),
	('The World Needs a Hero', 2001, 7, 'Public Enemy No. 1'
	),
	('The System Has Failed', 2004, NULL, NULL
	),
	('United Abominations', 2007, NULL, NULL
	),
	('Endgame', 2009, NULL, NULL
	),
	('Thirteen', 2011, NULL, NULL
	),
	('Super Collider', 2013, NULL, NULL
	);

/* Check for and delete duplicates by copying to temporary 
 table, deleting the current table, then reinstating the 
 temporary table's values     */
SELECT DISTINCT * INTO temp FROM Megadeth_Albums
DELETE FROM Megadeth_Albums
INSERT INTO Megadeth_Albums
SELECT * FROM temp
	DROP TABLE temp;


SELECT * FROM Megadeth_Albums