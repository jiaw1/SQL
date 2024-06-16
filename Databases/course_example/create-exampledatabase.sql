CREATE TABLE Product(
       model TEXT PRIMARY KEY,
       maker TEXT,
       type TEXT
);

CREATE TABLE PC(
       model TEXT PRIMARY KEY,
       speed REAL,
       ram INTEGER,
       hd INTEGER,
       price INTEGER
);

CREATE TABLE Laptop(
       model TEXT PRIMARY KEY,
       speed REAL,
       ram INTEGER,
       hd INTEGER,
       screen REAL,
       price INTEGER
);

CREATE TABLE Printer(
       model TEXT PRIMARY KEY,
       color INTEGER,
       type TEXT,
       price INTEGER
);

CREATE TABLE Students (
       ID TEXT PRIMARY KEY,
       name TEXT,
       program TEXT,
       year INTEGER
);

CREATE TABLE Courses (
       code TEXT PRIMARY KEY,
       name TEXT,
       credits REAL
);

CREATE TABLE Grades (
       studentID TEXT,
       courseCode TEXT,
       date TEXT,
       grade INTEGER,
       PRIMARY KEY (studentID, courseCode)
);

CREATE TABLE Movies (
       title TEXT,
       year INTEGER,
       length INTEGER,
       genre TEXT,
       studioName  TEXT,
       prodno INTEGER, 
       PRIMARY KEY (title, year)
);

CREATE TABLE MovieStar (
       name TEXT PRIMARY KEY,
       address TEXT,
       gender TEXT,
       birthdate TEXT
);

CREATE TABLE StarsIn (
       movieTitle TEXT,
       movieYear INTEGER,
       starName TEXT
);

CREATE TABLE MovieExec (
       name TEXT,
       address TEXT,
       certno INTEGER PRIMARY KEY
);

INSERT INTO Product
VALUES('1001', 'A', 'pc');
INSERT INTO Product
VALUES('1002', 'A', 'pc');
INSERT INTO Product
VALUES('1003', 'A', 'pc');
INSERT INTO Product
VALUES('2004', 'A', 'laptop');
INSERT INTO Product
VALUES('2005', 'A', 'laptop');
INSERT INTO Product
VALUES('2006', 'A', 'laptop');
INSERT INTO Product
VALUES('1004', 'B', 'pc');
INSERT INTO Product
VALUES('1005', 'B', 'pc');
INSERT INTO Product
VALUES('1006', 'B', 'pc');
INSERT INTO Product
VALUES('2007', 'B', 'laptop');
INSERT INTO Product
VALUES('1007', 'C', 'pc');
INSERT INTO Product
VALUES('2011', 'C', 'laptop');
INSERT INTO Product
VALUES('1008', 'D', 'pc');
INSERT INTO Product
VALUES('1009', 'D', 'pc');
INSERT INTO Product
VALUES('1010', 'D', 'pc');
INSERT INTO Product
VALUES('3004', 'D', 'printer');
INSERT INTO Product
VALUES('3005', 'D', 'printer');
INSERT INTO Product
VALUES('3013', 'D', 'printer');
INSERT INTO Product
VALUES('1011', 'E', 'pc');
INSERT INTO Product
VALUES('1012', 'E', 'pc');
INSERT INTO Product
VALUES('1013', 'E', 'pc');
INSERT INTO Product
VALUES('2001', 'E', 'laptop');
INSERT INTO Product
VALUES('2002', 'E', 'laptop');
INSERT INTO Product
VALUES('2003', 'E', 'laptop');
INSERT INTO Product
VALUES('3001', 'E', 'printer');
INSERT INTO Product
VALUES('3002', 'E', 'printer');
INSERT INTO Product
VALUES('3003', 'E', 'printer');
INSERT INTO Product
VALUES('2008', 'F', 'laptop');
INSERT INTO Product
VALUES('2009', 'F', 'laptop');
INSERT INTO Product
VALUES('2010', 'G', 'laptop');
INSERT INTO Product
VALUES('3006', 'H', 'printer');
INSERT INTO Product
VALUES('3007', 'H', 'printer');
INSERT INTO Product
VALUES('3008', 'I', 'printer');
INSERT INTO Product
VALUES('3009', 'H', 'printer');
INSERT INTO Product
VALUES('3010', 'H', 'printer');
INSERT INTO Product
VALUES('3011', 'E', 'printer');
INSERT INTO Product
VALUES('3012', 'D', 'printer');
INSERT INTO Product
VALUES('2012', 'F', 'laptop');
INSERT INTO Product
VALUES('1014', 'L', 'pc');
INSERT INTO Product
VALUES('1015', 'L', 'pc');
INSERT INTO Product
VALUES('2013', 'L', 'laptop');
INSERT INTO Product
VALUES('3014', 'L', 'printer');
INSERT INTO Product
VALUES('3015', 'L', 'printer');
INSERT INTO Product
VALUES('2014', 'F', 'laptop');

INSERT INTO PC
VALUES('1001', 2.7, 8192, 1000, 999);
INSERT INTO PC
VALUES('1002', 1.6, 4096, 500, 299);
INSERT INTO PC
VALUES('1003', 3.0, 4096, 500, 499);
INSERT INTO PC
VALUES('1004', 1.6, 8192, 1000, 1249);
INSERT INTO PC
VALUES('1005', 1.4, 4096, 500, 499);
INSERT INTO PC
VALUES('1006', 3.20, 8192, 1000, 799);
INSERT INTO PC
VALUES('1007', 3.5, 8192, 1000, 749);
INSERT INTO PC
VALUES('1008', 3.2, 8192, 1000, 499);
INSERT INTO PC
VALUES('1009', 2.8, 8192, 1000, 1249);
INSERT INTO PC
VALUES('1010', 3.2, 8192, 1000, 2099);
INSERT INTO PC
VALUES('1011', 3.3, 8192, 700, 999);
INSERT INTO PC
VALUES('1012', 1.4, 2048, 16, 219);
INSERT INTO PC
VALUES('1013', 2.7, 4096, 500, 329);
INSERT INTO PC
VALUES('1014', 1.6, 4096, 500, 339);
INSERT INTO PC
VALUES('1015', 3.3, 8192, 700, 899);

INSERT INTO Laptop
VALUES('2001', 2.5, 8192, 750, 17.3, 3534);
INSERT INTO Laptop
VALUES('2002', 2.3, 8192, 128, 17.3, 949);
INSERT INTO Laptop
VALUES('2003', 2.3, 8192, 128, 15.6, 599);
INSERT INTO Laptop
VALUES('2004', 2.7, 8192, 256, 13.3, 1649);
INSERT INTO Laptop
VALUES('2005', 2.6, 16384, 1000, 17.3, 2499);
INSERT INTO Laptop
VALUES('2006', 2.2, 16384, 256, 15.4, 2199);
INSERT INTO Laptop
VALUES('2007', 1.6, 2048, 32, 13.3, 249);
INSERT INTO Laptop
VALUES('2008', 2.5, 8192, 192, 15.6, 949);
INSERT INTO Laptop
VALUES('2009', 2.5, 8192, 128, 14.0, 599);
INSERT INTO Laptop
VALUES('2010', 2.5, 8192, 256, 15.6, 2352);
INSERT INTO Laptop
VALUES('2011', 2.0, 4096, 128, 13.3, 499);
INSERT INTO Laptop
VALUES('2012', 2.0, 4096, 512, 13.3, 499);
INSERT INTO Laptop
VALUES('2013', 2.0, 4096, 512, 13.3, 489);
INSERT INTO Laptop
VALUES('2014', 2.5, 8192, 512, 13.3, 1200);

INSERT INTO Printer
VALUES('3001', 1, 'ink-jet', 49);
INSERT INTO Printer
VALUES('3002', 0, 'laser', 124);
INSERT INTO Printer
VALUES('3003', 1, 'laser', 399);
INSERT INTO Printer
VALUES('3004', 0, 'ink-jet', 49);
INSERT INTO Printer
VALUES('3013', 1, 'laser', 489);
INSERT INTO Printer
VALUES('3005', 1, 'laser', 489);
INSERT INTO Printer
VALUES('3006', 0, 'ink-jet', 100);
INSERT INTO Printer
VALUES('3007', 1, 'laser', 2582);
INSERT INTO Printer
VALUES('3008', 0, 'laser', 89);
INSERT INTO Printer
VALUES('3009', 1, 'laser', 299);
INSERT INTO Printer
VALUES('3010', 1, 'other', 540);
INSERT INTO Printer
VALUES('3011', 0, 'other', 300);
INSERT INTO Printer
VALUES('3012', 1, 'other', 999);
INSERT INTO Printer
VALUES('3014', 1, 'ink-jet', 120);
INSERT INTO Printer
VALUES('3015', 1, 'laser', 420);

INSERT INTO Students
VALUES('112233', 'Teemu Teekkari', 'TIK', 2019);
INSERT INTO Students
VALUES('123456', 'Tiina Teekkari', 'TUTA', 2021);
INSERT INTO Students
VALUES('224411', 'Maija Virtanen', 'AUT', 2021);
INSERT INTO Students
VALUES('218311', 'Kari Kemisti', 'KEM', 2017);
INSERT INTO Students
VALUES('433511', 'Maija Virtanen', 'TUTA', 2018);
INSERT INTO Students
VALUES('512443', 'Kalle Rantanen', 'TIK', 2021);
INSERT INTO Students
VALUES('212434', 'Pekka Lampinen', 'BIZ', 2017);
INSERT INTO Students
VALUES('442255', 'Teemu Teekkari', 'TFM', 2020);
INSERT INTO Students
VALUES('565545', 'Anne Korhonen', 'AUT', 2021);
INSERT INTO Students
VALUES('441232', 'Minna Kalaoja', 'TIK', 2016);
INSERT INTO Students
VALUES('234155', 'Mari Virtanen', 'TFM', 2020);
INSERT INTO Students
VALUES('553311', 'Ville Vallaton', 'AUT', 2017);
INSERT INTO Students
VALUES('512434', 'Pirjo Pirtea', 'BIZ', 2020);
INSERT INTO Students
VALUES('987202', 'Karri Lappinen', 'TIK', 2021);
INSERT INTO Students
VALUES('987222', 'Katri Lampinen', 'TIK', 2022);
INSERT INTO Students
VALUES('987232', 'Kari Lampinen', 'TFM', 2022);
INSERT INTO Students
VALUES('999999', 'Ari Lappela', 'TIK', 2023);
INSERT INTO Students
VALUES('997777', 'Amanda Alaja', 'TIK', 2021);


INSERT INTO Courses
VALUES('CS-A0000', 'Elementary Programming', 1);
INSERT INTO Courses
VALUES('CSE-A1111', 'Basic Course in Programming Y1', 5);
INSERT INTO Courses
VALUES('CS-A1150', 'Databases', 5);
INSERT INTO Courses
VALUES('ICS-A1120', 'Programming 2', 5);
INSERT INTO Courses
VALUES('CS-A1120', 'Programming 2', 5);
INSERT INTO Courses
VALUES('ME-C2110', 'Programming Studio 1', 5);
INSERT INTO Courses
VALUES('TU-A1150', 'Philosophy and Systems Thinking', 3);
INSERT INTO Courses
VALUES('T-76.5655', 'Research Seminar on Software Engineering', 3);
INSERT INTO Courses
VALUES('PHYS-C9381', 'Energy Literacy', 3);
INSERT INTO Courses
VALUES('MUO-E8005', 'Sustainable Product and Service Design', 4);
INSERT INTO Courses
VALUES('CSE-A1110', 'Programming 1', 5);
INSERT INTO Courses
VALUES('CS-A1110', 'Programming 1', 5);
INSERT INTO Courses
VALUES('CSE-A1200', 'Databases', 5);
INSERT INTO Courses
VALUES('38D010', 'Business and Industrial Policy', 6);
INSERT INTO Courses
VALUES('CS-0000', 'Programming for School Children 1', 3);
INSERT INTO Courses
VALUES('CA-0000', 'Programming for School Children 2', 3);

INSERT INTO Grades
VALUES('112233', 'CSE-A1111', '2020-05-28', 3);
INSERT INTO Grades
VALUES('442255', 'CSE-A1200', '2021-01-20', 2);
INSERT INTO Grades
VALUES('218311', 'CSE-A1111', '2020-12-10', 5);
INSERT INTO Grades
VALUES('112233', 'CSE-A1200', '2021-02-19', 1);
INSERT INTO Grades
VALUES('111222', 'CSE-A1111', '2020-12-12', 4);
INSERT INTO Grades
VALUES('442255', 'CSE-A1111', '2020-12-12', 5);
INSERT INTO Grades
VALUES('112233', 'ME-C2110', '2021-05-12', 4);
INSERT INTO Grades
VALUES('218311', 'TU-A1150', '2019-04-22', 2);
INSERT INTO Grades
VALUES('218311', 'MUO-E8005', '2018-11-30', 4);
INSERT INTO Grades
VALUES('442255', 'PHYS-C9381', '2021-05-09', 2);
INSERT INTO Grades
VALUES('212434', 'TU-A1150', '2019-09-02', 3);
INSERT INTO Grades
VALUES('218311', 'PHYS-C9381', '2020-08-30', 1);
INSERT INTO Grades
VALUES('224411', 'ICS-A1120', '2021-05-20', 4);
INSERT INTO Grades
VALUES('433511', 'ICS-A1120', '2021-05-20', 5);
INSERT INTO Grades
VALUES('565545', 'CSE-A2222', '2021-09-03', 3);
INSERT INTO Grades
VALUES('218311', 'T-76.5655', '2021-08-30', 2);
INSERT INTO Grades
VALUES('442255', 'TU-A1150', '2021-10-20', 4);
INSERT INTO Grades
VALUES('212434', 'PHYS-C9381', '2019-10-25', 1);
INSERT INTO Grades
VALUES('224411', 'T-76.5655', '2021-12-20', 4);
INSERT INTO Grades
VALUES('553311', 'T-76.5655', '2021-12-20', 2);
INSERT INTO Grades
VALUES('433511', 'MUO-E8005', '2020-04-20', 3);
INSERT INTO Grades
VALUES('777111', 'CSE-A3300', '2018-05-18', 3);
INSERT INTO Grades
VALUES('433511', 'ME-C2110', '2020-05-22', 5);
INSERT INTO Grades
VALUES('553311', 'TU-A1150', '2020-03-21', 1);
INSERT INTO Grades
VALUES('212434', 'MUO-E8005', '2019-03-21', 2);
INSERT INTO Grades
VALUES('553311', 'CSE-A1200', '2021-10-20', 4);
INSERT INTO Grades
VALUES('553311', 'CSE-A1111', '2021-10-05', 3);
INSERT INTO Grades
VALUES('212434', 'CSE-A1200', '2021-02-19', 1);
INSERT INTO Grades
VALUES('512443', 'PHYS-C9381', '2021-02-25', 2);
INSERT INTO Grades
VALUES('512434', 'CSE-A1111', '2020-12-12', 3);
INSERT INTO Grades
VALUES('512434', 'ME-C2110', '2021-05-12', 4);
INSERT INTO Grades
VALUES('512434', 'TU-A1150', '2021-04-22', 1);
INSERT INTO Grades
VALUES('224411', 'CS-A1110', '2021-04-22', 3);
INSERT INTO Grades
VALUES('987202', 'CS-A1110', '2021-12-22', 4);
INSERT INTO Grades
VALUES('987202', 'CS-A1120', '2021-05-22', 2);
INSERT INTO Grades
VALUES('234155', 'CS-A1110', '2021-05-22', 1);
INSERT INTO Grades
VALUES('234155', 'CS-A1120', '2021-05-24', 4);
INSERT INTO Grades
VALUES('565545', 'CS-A1110', '2021-12-22', 5);
INSERT INTO Grades
VALUES('565545', 'CS-A1120', '2021-12-22', 4);
INSERT INTO Grades
VALUES('512443', 'CS-A1110', '2021-12-22', 5);
INSERT INTO Grades
VALUES('512443', 'CS-A1150', '2022-02-21', 5);
INSERT INTO Grades
VALUES('512443', 'ME-C2110', '2022-02-21', 4);
INSERT INTO Grades
VALUES('553311', 'CS-A1110', '2019-12-22', 5);
INSERT INTO Grades
VALUES('999999', 'CS-A1110', '2023-12-21', 3);
INSERT INTO Grades
VALUES('999999', 'TU-A1150', '2023-10-28', 2);
INSERT INTO Grades
VALUES('553311', 'CS-A1120', '2021-05-22', 2);
INSERT INTO Grades
VALUES('987222', 'CS-A1110', '2022-12-22', 4);
INSERT INTO Grades
VALUES('987222', 'CS-A1120', '2023-05-22', 5);
INSERT INTO Grades
VALUES('987232', 'CS-A1110', '2022-12-22', 3);
INSERT INTO Grades
VALUES('441232', 'CSE-A1110', '2017-12-22', 5);
INSERT INTO Grades
VALUES('565545', 'CS-A1150', '2023-02-21', 3);

INSERT INTO Movies 
VALUES('Gone with the Wind', 1939, 231, 'drama', 'Warner', 456);
INSERT INTO Movies 
VALUES('Star Wars', 1977, 124, 'SciFi', 'Fox', 123);
INSERT INTO Movies 
VALUES('Waynes World', 1992, 95, 'comedy', 'Paramount', 965);
INSERT INTO Movies 
VALUES('Pretty Woman', 1990,  119, 'comedy', 'Disney', 999);
INSERT INTO Movies 
VALUES('Mary Poppins', 1964, 139, 'musical', 'Disney', 223);
INSERT INTO Movies 
VALUES('Prince Caspian', 2008, 139, 'fantasy', 'Disney', 218);
INSERT INTO Movies 
VALUES('Sabrina', 1954, 113, 'comedy', 'Paramount', 587);
INSERT INTO Movies 
VALUES('Love Story', 1970, 100, 'romance', 'Paramount', 585);
INSERT INTO Movies 
VALUES('The Godfather, Part III', 1990, 170, 'thriller', 'Paramount', 378);
INSERT INTO Movies 
VALUES('Lost in Translation', 2003, 102, 'comedy', 'Focus Features', 459);
INSERT INTO Movies 
VALUES('Red Dragon', 2002, 124, 'thriller', 'MGM', 178);
INSERT INTO Movies 
VALUES('The Color Purple', 1985, 153, 'drama', 'Warner', 326);
INSERT INTO Movies 
VALUES('Tuntematon sotilas', 1955, 169, 'war', 'Suomen Filmiteollisuus', 713);
INSERT INTO Movies 
VALUES('Rich in Love', 1993, 105, 'drama', 'MGM', 155);
INSERT INTO Movies 
VALUES('The Lover', 1992, 115, 'drama', 'MGM', 146);
INSERT INTO Movies 
VALUES('Mona Lisa Smile', 2003, 117, 'drama', 'Columbia', 775);
INSERT INTO Movies 
VALUES('Sabrina', 1994, 127, 'test version', 'Test Studio', 114);
INSERT INTO Movies 
VALUES('Sabrina', 1995, 127, 'comedy', 'Paramount', 114);
INSERT INTO Movies 
VALUES('Tuntematon sotilas', 1985, 197, 'war', 'Artic-Filmi', 317);
INSERT INTO Movies 
VALUES('Raiders of the Lost Ark', 1981, 115, 'adventure', 'Paramount', 326);
INSERT INTO Movies 
VALUES('Letters from Iwo Jima', 2006, 141, 'war', 'DreamWorks', 475); 
INSERT INTO Movies 
VALUES('Notting Hill', 1999, 124, 'comedy', 'MCA-Universal', 822);
INSERT INTO Movies 
VALUES('Gandhi', 1982, 188, 'history', 'Columbia', 598);
INSERT INTO Movies 
VALUES('Jurassic Park', 1993, 127, 'SciFi', 'Universal Pictures', 326);
INSERT INTO Movies 
VALUES('Pretty Woman', 1985, 100, 'experiment', 'Home', 834);
INSERT INTO Movies 
VALUES('Schindler''s List', 1993, 197, 'drama', 'Universal Pictures', 326);
INSERT INTO Movies 
VALUES('Million Dollar Baby', 2004, 132, 'drama', 'Warner', 475);
INSERT INTO Movies 
VALUES('Apocalypse Now', 1979, 153, 'war', 'United Artists', 378);
INSERT INTO Movies 
VALUES('Dirty Harry', 1971, 103, 'action', 'The Malpaso Company', 140);
INSERT INTO Movies 
VALUES('Dirty Harry', 1970, 103, 'experiment', 'The Malpaso Company', 140);
INSERT INTO Movies 
VALUES('Diamonds Are Forever', 1971, 120, 'spy', 'United Artists', 142);
INSERT INTO Movies 
VALUES('Vertigo', 1958, 128, 'thriller', 'Paramount', 1003);
INSERT INTO Movies 
VALUES('Psycho', 1960, 109, 'thriller', 'Paramount', 1003);
INSERT INTO Movies
VALUES('Puhdistus', 2012, 125, 'drama', 'Solar Films', 1009);
INSERT INTO Movies
VALUES('The Devils Own', 1997, 111, 'action', 'Columbia', 1011);
INSERT INTO Movies
VALUES('The Mexican', 2001, 123, 'adventure', 'DreamWorks', 1010);


INSERT INTO MovieExec
VALUES('Quentin Taratino', '43 Maple St., Hollywood', 449);
INSERT INTO MovieExec
VALUES('Clint Eastwood', '4 Maple St., Hollywood', 475);
INSERT INTO MovieExec
VALUES('George Lucas', '85 Palm St., San Fransisco', 123);
INSERT INTO MovieExec
VALUES('Penelope Spheeris', '72 Oak Rd., Brentwood', 965);
INSERT INTO MovieExec
VALUES('Roger Michell', '16 Maple St., Hollywood', 822);
INSERT INTO MovieExec
VALUES('Edvin Laine', 'Mannerheimintie 83, Helsinki', 713);
INSERT INTO MovieExec
VALUES('Arthur Hiller', '77 Palm Dr., Beverly Hills', 585);
INSERT INTO MovieExec
VALUES('Victor Fleming', '35 Main St., Cottonwood', 456);
INSERT INTO MovieExec
VALUES('Mike Newell', '42 Palm St., San Fransisco', 775);
INSERT INTO MovieExec
VALUES('Garry Marshall', '27 Palm Dr., Beverly Hills', 999);
INSERT INTO MovieExec
VALUES('Steven Spielberg', '56 Main St., Beverly Hills', 326);
INSERT INTO MovieExec
VALUES('Robert Stevenson', '22 Main St., Beverly Hills', 223);
INSERT INTO MovieExec
VALUES('Andrew Adamson', '15 Main St., Beverly Hills', 218);
INSERT INTO MovieExec
VALUES('Francis Ford Coppola', '15 Some St.', 378);
INSERT INTO MovieExec
VALUES('Sofia Coppola', '28 Some St.', 459);
INSERT INTO MovieExec
VALUES('Brett Ratner', '53 New St.', 178);
INSERT INTO MovieExec
VALUES('Bruce Beresford', '667 Long St.', 155);
INSERT INTO MovieExec
VALUES('Jean-Jacques Annaud', 'Paris, France', 146);
INSERT INTO MovieExec
VALUES('Billy Wilder', '22 Maple St., Hollywood', 587);
INSERT INTO MovieExec
VALUES('Sydney Pollack', 'Pacific Palisades', 114);
INSERT INTO MovieExec
VALUES('Rauni Mollberg', 'Loimaa', 317);
INSERT INTO MovieExec
VALUES('Alfred Hitchcock', '23 Maple St., Hollywood', 1003);
INSERT INTO MovieExec
VALUES('Antti J. Jokinen', 'Helsinki', 1009);
INSERT INTO MovieExec
VALUES('Gore Verbinski', 'Tennesee', 1010);
INSERT INTO MovieExec
VALUES('Alan J. Pakula', 'Melville', 1011);

INSERT INTO MovieStar
VALUES('Kate Capshaw', '56 Main St., Beverly Hills', 'F', '1953-11-03');
INSERT INTO MovieStar
VALUES('Harrison Ford', '789 Palm Dr., Beverly Hills', 'M', '1942-07-13');
INSERT INTO MovieStar
VALUES('Calista Flockhart', '789 Palm Dr., Beverly Hills', 'F', '1964-11-11');
INSERT INTO MovieStar
VALUES('Richard Attenborough', 'Harley St., London', 'M', '1923-08-29');
INSERT INTO MovieStar
VALUES('Julia Roberts', 'Oddstreet 1', 'F', '1967-10-28');
INSERT INTO MovieStar
VALUES('Richard Gere', 'Oddstreet 2', 'M', '1939-08-31');
INSERT INTO MovieStar
VALUES('Mike Myers', 'Oddstreet 12', 'M', '1963-05-25');
INSERT INTO MovieStar
VALUES('Sofia Coppola', '28 Some St.', 'F', '1971-05-14');
INSERT INTO MovieStar
VALUES('Carrie Fisher', '123 Maple St., Hollywood', 'F', '1956-10-21');
INSERT INTO MovieStar
VALUES('Mark Hamill', '456 Oak Rd., Brentwood', 'M', '1951-09-25');
INSERT INTO MovieStar
VALUES('Clint Eastwood', '4 Maple St., Hollywood', 'M', '1930-05-31');
INSERT INTO MovieStar
VALUES('Audrey Hepburn', 'Tolochenaz', 'F', '1929-05-04');
INSERT INTO MovieStar
VALUES('Liam Neeson', 'Millbrook', 'M', '1952-06-07');
INSERT INTO MovieStar
VALUES('Laura Birn', 'Helsinki', 'F', '1981-04-25');
INSERT INTO MovieStar
VALUES('Brad Pitt', NULL, 'M', '1963-12-18');

INSERT INTO StarsIn
VALUES('Star Wars', 1977, 'Harrison Ford');
INSERT INTO StarsIn
VALUES('Star Wars', 1977, 'Carrie Fisher');
INSERT INTO StarsIn
VALUES('Star Wars', 1977, 'Mark Hamill');
INSERT INTO StarsIn
VALUES('Pretty Woman', 1990, 'Julia Roberts');
INSERT INTO StarsIn
VALUES('Sabrina', 1994, 'Julia Roberts');
INSERT INTO StarsIn
VALUES('Pretty Woman', 1990, 'Richard Gere');
INSERT INTO StarsIn
VALUES('Pretty Woman', 1985, 'Richard Gere');
INSERT INTO StarsIn
VALUES('Waynes World', 1992, 'Mike Myers');
INSERT INTO StarsIn
VALUES('Notting Hill', 1999, 'Julia Roberts');
INSERT INTO StarsIn
VALUES('The Godfather, Part III', 1990, 'Sofia Coppola');
INSERT INTO StarsIn
VALUES('Sabrina', 1995, 'Harrison Ford');
INSERT INTO StarsIn
VALUES('Mona Lisa Smile', 2003, 'Julia Roberts');
INSERT INTO StarsIn
VALUES('Sabrina', 1954, 'Audrey Hepburn');
INSERT INTO StarsIn
VALUES('Dirty Harry', 1971, 'Clint Eastwood');
INSERT INTO StarsIn
VALUES('Raiders of the Lost Ark', 1981, 'Harrison Ford');
INSERT INTO StarsIn
VALUES('Schindler''s List', 1993, 'Liam Neeson');
INSERT INTO StarsIn
VALUES('Puhdistus', 2012, 'Laura Birn');
INSERT INTO StarsIn
VALUES('The Devils Own', 1997, 'Harrison Ford');
INSERT INTO StarsIn
VALUES('The Devils Own', 1997, 'Brad Pitt');
INSERT INTO StarsIn
VALUES('The Mexican', 2001, 'Julia Roberts');
INSERT INTO StarsIn
VALUES('The Mexican', 2001, 'Brad Pitt');
