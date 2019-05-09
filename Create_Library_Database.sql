CREATE DATABASE Library
USE Library;

CREATE TABLE LIBRARY_BRANCH (
BranchID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
BranchName VARCHAR(30) NOT NULL,
Address VARCHAR (40) NOT NULL
)
;

CREATE TABLE PUBLISHER (
PublisherName VARCHAR(30) PRIMARY KEY NOT NULL,
Address VARCHAR (40) NOT NULL,
Phone VARCHAR(15) NOT NULL
)
;

CREATE TABLE BOOKS (
BookID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Title VARCHAR (50) NOT NULL,
PublisherName VARCHAR(30) NOT NULL,
FOREIGN KEY (PublisherName) REFERENCES Publisher (PublisherName)
)
;

CREATE TABLE BOOK_AUTHORS (
BookID INT NOT NULL IDENTITY(1,1),
AuthorName VARCHAR(30) NOT NULL,
FOREIGN KEY (BookID) REFERENCES BOOKS (BookID)
)
;

CREATE TABLE BOOK_COPIES (
BookID INT NOT NULL,
BranchID INT NOT NULL,
Number_Of_Copies INT NOT NULL,
FOREIGN KEY (BookID) REFERENCES BOOKS (BookID),
FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH (BranchID)
)
;

CREATE TABLE BOOK_LOANS (
BookID INT NULL,
BranchID INT NOT NULL,
CardNo INT NOT NULL,
DateOut DATE NOT NULL,
DateDue DATE NOT NULL,
FOREIGN KEY (BookID) REFERENCES BOOKS (BookID),
FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH (BranchID),
FOREIGN KEY (CardNo) REFERENCES BORROWER (CardNo)
)
;

CREATE TABLE BORROWER (
CardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),
Name VARCHAR(30) NOT NULL,
Address VARCHAR(30) NOT NULL,
Phone VARCHAR(15) NOT NULL,
)
;

INSERT INTO LIBRARY_BRANCH
	(BranchName, Address)
	VALUES
	('Sharpstown', '2120 NW Glarbo St'),
	('Central', '466 E Bliffle Ave'),
	('Splatsville', '6300 W Charple Ln'),
	('Skruffington', '9797 S Lurgles St')
;

INSERT INTO BOOKS
	(Title, PublisherName)
	VALUES
	('The Trail of the Dimension', 'Atlas Press'),

	('The Outpost of the Great Cartographer', 'Ballantine Books'),

	('The Mystery of the Power', 'Dedalus Books'),

	('Silent Detective', 'Harper Collins'),

	('The Circling Gatekeeper', 'Ballantine Books'),

	('The Glacier of Williamson''s Lightning', 'Atlas Press'),

	('The Skyscraper that Engulfed the Mines', 'Harper Collins'),

	('Policeman that Slew the Enigmascope', 'Ballantine Books'),

	('The Cat of the Window', 'Atlas Press'),

	('The Mist of the Magnetic Tunnels', 'Dedalus Books'),

	('The Space Ship of the Unnatural Desert', 'Harper Collins'),

	('The Obstinate Carnival', 'Harper Collins'),

	('The Isle that Dreaded the Idol', 'Ballantine Books'),

	('The Horrifying Fog of Bellus', 'Dedalus Books'),

	('Destroyed in the Microscopic Engines', 'Atlas Press'),

	('The Enigma of the Transforming Hurricane', 'Pluto Press'),

	('The Hovercar of the Unsettling Salesman', 'Harper Collins'),

	('The Unfortunate Colony of Altair', 'Pluto Press'),

	('The Editor from Above the Equation', 'Atlas Press'),

	('The Love of the World', 'Pluto Press'),

	('The Oracle of Simak''s Tunnels', 'Dedalus Books'),

	('Nightmare of the Sentry', 'Ballantine Books'),

	('The Spacemen that Discovered the Brains', 'Atlas Press'),

	('The Adamant Pygmy Doctor', 'Harper Collins'),

	('The Magnetic Eidolon of the Mountains', 'Pluto Press'),

	('The Forbidden Mines of the Abyss', 'Ballantine Books'),

	('The Lake of the Spaceport', 'Pluto Press'),

	('The Mystery of the Monolith', 'Dedalus Books'),

	('Marooned by the Timeless Jailer', 'Atlas Press'),

	('The Airship that Freed the Thing', 'Atlas Press'),

	('Rescue from the Invisible Marshes', 'Pluto Press'),

	('The Forest of the Uneasy Behemoth', 'Harper Collins'),

	('Discovery of the Radio', 'Dedalus Books'),

	('Rotwang''s Crab Antiquarians', 'Ballantine Books'),

	('The Sculptor that Captured the Queen', 'Pluto Press'),

	('The Toad of Klaatu''s Future', 'Pluto Press'),

	('Neptune''s Pygmy Biologist', 'Atlas Press'),

	('The Fantastic Noble Doctor', 'Harper Collins'),

	('The Instrument of Mankind''s River', 'Pluto Press'),

	('The Nymphs that Wept for the Robot', 'Dedalus Books'),

	('The Fantastic Savage Child', 'Atlas Press'),

	('The Lost Tribe', 'Pluto Press'),

	('The City of the Wombat Assassins', 'Pluto Press'),

	('The Flesh Eating Warriors of Love', 'Ballantine Books'),

	('The Menace of the Other Zoo', 'Dedalus Books'),

	('Messenger that Encircled Bellatrix', 'Atlas Press'),

	('The Thieves from Beneath the City', 'Harper Collins')
;
INSERT INTO PUBLISHER
	(PublisherName, Address, Phone)
	VALUES
	('Atlas Press', '55220 N Zuppers Blvd', '213-425-8554'),
	('Ballantine Books', '4211 W Thruckus St', '415-745-8812'),
	('Dedalus Books', '88 8th Ct', '202-965-3236'),
	('Harper Collins', '2020 S Jorfus Pl', '656-345-1779'),
	('Pluto Press', '999 SW Yerzich Cir', '716-365-9614')
;

INSERT INTO BOOK_AUTHORS
	(AuthorName)
	VALUES
	('Aleena O''Sullivan'),
	('Bryan Wood'),
	('Poppy Sutton'),
	('Sam Aguilar'),
	('Viktor Langley'),
	('Reginald Fizzbucket'),
	('Snappy Jaxon'),
	('Orla Reed'),
	('Heath Merriman'),
	('Aleena O''Sullivan'),
	('Sam Aguilar'),
	('Bryan Wood'),
	('Poppy Sutton'),
	('Viktor Langley'),
	('Orla Reed'),
	('Sam Aguilar'),
	('Hayden Garner'),
	('Stephen King'),
	('Hayden Garner'),
	('Reginald Fizzbucket'),
	('Poppy Sutton'),
	('Orla Reed'),
	('Hayden Garner'),
	('Aleena O''Sullivan'),
	('Viktor Langley'),
	('Bryan Wood'),
	('Sam Aguilar'),
	('Heath Merriman'),
	('Poppy Sutton'),
	('Hayden Garner'),
	('Heath Merriman'),
	('Viktor Langley'),
	('Snappy Jaxon'),
	('Stephen King'),
	('Aleena O''Sullivan'),
	('Idrees Pickett'),
	('Reginald Fizzbucket'),
	('Orla Reed'),
	('Poppy Sutton'),
	('Viktor Langley'),
	('Hayden Garner'),
	('Bryan Wood'),
	('Aleena O''Sullivan'),
	('Sam Aguilar'),
	('Orla Reed'),
	('Heath Merriman'),
	('Snappy Jaxon')
;

INSERT INTO BOOK_COPIES
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(1, 1, 2),
	(2, 1, 2),
	(3, 1, 2),
	(4, 1, 2),
	(5, 1, 2),
	(6, 1, 2),
	(7, 1, 2),
	(8, 1, 2),
	(9, 1, 2),
	(10, 1, 2),
	(11, 2, 2),
	(12, 2, 2),
	(13, 2, 2),
	(14, 2, 2),
	(15, 2, 2),
	(16, 2, 2),
	(17, 2, 2),
	(18, 2, 2),
	(19, 2, 2),
	(20, 2, 2),
	(21, 3, 2),
	(22, 3, 2),
	(23, 3, 2),
	(24, 3, 2),
	(25, 3, 2),
	(26, 3, 2),
	(27, 3, 2),
	(28, 3, 2),
	(29, 3, 2),
	(30, 3, 2),
	(31, 4, 2),
	(32, 4, 2),
	(33, 4, 2),
	(34, 2, 2),
	(35, 4, 2),
	(36, 4, 2),
	(37, 4, 2),
	(38, 4, 2),
	(39, 4, 2),
	(40, 4, 2),
	(41, 1, 2),
	(42, 1, 2),
	(43, 3, 2),
	(44, 4, 2),
	(45, 1, 2),
	(46, 2, 2),
	(47, 3, 2)
;

INSERT INTO BORROWER
	(Name, Address, Phone)
	VALUES
	('Bilver Higgo', '1078 W Pluster Pl', '541-856-9977'),
	('Stan Jummers', '3021 E Dorp St', '206-747-1122'),
	('Xavier Trix', '878 NW Ruckus Pl', '303-811-5482'),
	('Hank Buttonz', '7412 SW Varnish Ave', '989-215-9635'),
	('Darnell Pollops', '2046 55th St', '521-455-4565'),
	('Watson Wagstrum', '5899 NE Jiggles Way', '971-626-3787'),
	('Chuncey Nimple', '1237 W Referendum Blvd', '633-471-2289'),
	('Dorfson Sapps', '66333 E Turnip Polish Rd', '864-872-3115'),
	('Stefan Nonreader', '874 Loser Ln', '565-213-6871')
;

INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(1, 1, 100, '2019-02-02', '2019-03-02'),
	(2, 1, 100, '2019-02-02', '2019-03-02'),
	(3, 1, 100, '2019-02-02', '2019-03-02'),
	(4, 1, 100, '2019-02-02', '2019-03-02'),
	(5, 1, 100, '2019-02-02', '2019-03-02'),
	(6, 1, 100, '2019-02-02', '2019-05-09'),
	(7, 2, 101, '2019-03-10', '2019-04-10'),
	(8, 1, 101, '2019-03-10', '2019-04-10'),
	(9, 1, 101, '2019-03-10', '2019-05-09'),
	(10, 1, 101, '2019-03-10', '2019-04-10'),
	(11, 2, 101, '2019-03-10', '2019-04-10'),
	(12, 2, 101, '2019-03-10', '2019-05-09'),
	(13, 2, 102, '2019-04-15', '2019-05-15'),
	(14, 2, 102, '2019-04-15', '2019-05-15'),
	(15, 2, 102, '2019-04-15', '2019-05-15'),
	(16, 2, 102, '2019-04-15', '2019-05-15'),
	(17, 2, 102, '2019-04-15', '2019-05-15'),
	(18, 2, 102, '2019-04-15', '2019-05-15'),
	(19, 2, 103, '2019-01-26', '2019-02-26'),
	(20, 2, 103, '2019-01-26', '2019-02-26'),
	(21, 3, 103, '2019-01-26', '2019-02-26'),
	(22, 3, 103, '2019-01-26', '2019-02-26'),
	(23, 3, 103, '2019-01-26', '2019-02-26'),
	(24, 3, 103, '2019-01-26', '2019-02-26'),
	(25, 3, 104, '2019-03-22', '2019-04-22'),
	(1, 1, 104, '2019-03-22', '2019-04-22'),
	(2, 1, 104, '2019-03-22', '2019-04-22'),
	(3, 1, 104, '2019-03-22', '2019-05-09'),
	(4, 1, 104, '2019-03-22', '2019-04-22'),
	(5, 1, 104, '2019-03-22', '2019-04-22'),
	(6, 1, 105, '2019-05-07', '2019-05-09'),
	(7, 1, 105, '2019-05-07', '2019-06-07'),
	(8, 1, 105, '2019-05-07', '2019-06-07'),
	(9, 1, 105, '2019-05-07', '2019-06-07'),
	(10, 1, 105, '2019-05-07', '2019-06-07'),
	(11, 2, 105, '2019-05-07', '2019-06-07'),
	(12, 2, 106, '2019-04-09', '2019-05-09'),
	(13, 2, 106, '2019-04-09', '2019-05-09'),
	(14, 2, 106, '2019-04-09', '2019-05-09'),
	(15, 2, 106, '2019-04-09', '2019-05-09'),
	(16, 2, 106, '2019-04-09', '2019-05-09'),
	(17, 2, 106, '2019-04-08', '2019-05-08'),
	(18, 2, 107, '2019-05-02', '2019-06-02'),
	(19, 2, 107, '2019-05-02', '2019-06-02'),
	(20, 2, 107, '2019-05-02', '2019-06-02'),
	(21, 3, 107, '2019-05-02', '2019-06-02'),
	(22, 3, 107, '2019-05-02', '2019-06-02'),
	(23, 3, 107, '2019-05-02', '2019-06-02'),
	(24, 3, 107, '2019-05-02', '2019-06-02'),
	(25, 3, 107, '2019-05-02', '2019-06-02')
;

