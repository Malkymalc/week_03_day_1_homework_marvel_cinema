DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);


INSERT INTO people (name) VALUES ('Alexander Clements');
INSERT INTO people (name) VALUES ('Graeme Congreve');
INSERT INTO people (name) VALUES ('Christina Davies');
INSERT INTO people (name) VALUES ('Rebekah Dixon');
INSERT INTO people (name) VALUES ('Malcolm Finlayson');
INSERT INTO people (name) VALUES ('Catriona Ford');
INSERT INTO people (name) VALUES ('Ernest Fraiman');
INSERT INTO people (name) VALUES ('David Fulton');
INSERT INTO people (name) VALUES ('Ray Greenan');
INSERT INTO people (name) VALUES ('Ross Hancock');
INSERT INTO people (name) VALUES ('Chris Jennings');
INSERT INTO people (name) VALUES ('Steven Kay');
INSERT INTO people (name) VALUES ('Laura Manson');
INSERT INTO people (name) VALUES ('Nick Fury');
INSERT INTO people (name) VALUES ('Borna Maticic');
INSERT INTO people (name) VALUES ('Kevin McEwan');
INSERT INTO people (name) VALUES ('Thomas McPhee');
INSERT INTO people (name) VALUES ('Christopher Milligan');
INSERT INTO people (name) VALUES ('James Mundie');
INSERT INTO people (name) VALUES ('Jake Thwaites');
INSERT INTO people (name) VALUES ('Robin Willson');
INSERT INTO people (name) VALUES ('Paul Wishart');


INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:20');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '20:35');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '16:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '21:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '14:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '12:50');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:30');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:05');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:10');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '18:35');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '20:15');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '20:10');


-- SELECT * FROM people;


-- ## Questions

-- 1.  Return ALL the data in the 'movies' table.

-- SELECT * FROM movies;

-- id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 23:20
--   2 | The Incredible Hulk                 | 2008 | 20:35
--   3 | Iron Man 2                          | 2010 | 15:15
--   4 | Thor                                | 2011 | 16:45
--   5 | Captain America: The First Avenger  | 2011 | 21:50
--   6 | Avengers Assemble                   | 2012 | 13:50
--   7 | Iron Man 3                          | 2013 | 14:55
--   8 | Thor: The Dark World                | 2013 | 21:25
--   9 | Batman Begins                       | 2005 | 13:00
--  10 | Captain America: The Winter Soldier | 2014 | 12:50
--  11 | Guardians of the Galaxy             | 2014 | 12:30
--  12 | Avengers: Age of Ultron             | 2015 | 23:05
--  13 | Ant-Man                             | 2015 | 19:10
--  14 | Captain America: Civil War          | 2016 | 13:50
--  15 | Doctor Strange                      | 2016 | 18:35
--  16 | Guardians of the Galaxy 2           | 2017 | 20:15
--  17 | Spider-Man: Homecoming              | 2017 | 17:05
--  18 | Thor: Ragnarok                      | 2017 | 18:20
--  19 | Black Panther                       | 2018 | 20:10
--

-- 2.  Return ONLY the name column from the 'people' table

-- SELECT name FROM people;

-- 3.  Oops! Someone at CodeClan spelled Rob's name wrong! Change it to reflect the proper spelling ('Robin Willson' should be 'Rob Wilson').

-- UPDATE people SET name = 'Rob Wilson' WHERE name = 'Robin Willson';
-- SELECT name FROM people;

-- 4.  Return ONLY your name from the 'people' table.

-- SELECT name FROM people WHERE name = 'Malcolm Finlayson'

-- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

-- 		SELECT * FROM movies;
-- 		DELETE FROM movies WHERE title = 'Batman Begins';
-- 		SELECT * FROM movies;
--
-- 		id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 23:20
--   2 | The Incredible Hulk                 | 2008 | 20:35
--   3 | Iron Man 2                          | 2010 | 15:15
--   4 | Thor                                | 2011 | 16:45
--   5 | Captain America: The First Avenger  | 2011 | 21:50
--   6 | Avengers Assemble                   | 2012 | 13:50
--   7 | Iron Man 3                          | 2013 | 14:55
--   8 | Thor: The Dark World                | 2013 | 21:25
--  10 | Captain America: The Winter Soldier | 2014 | 12:50
--  11 | Guardians of the Galaxy             | 2014 | 12:30
--  12 | Avengers: Age of Ultron             | 2015 | 23:05
--  13 | Ant-Man                             | 2015 | 19:10
--  14 | Captain America: Civil War          | 2016 | 13:50
--  15 | Doctor Strange                      | 2016 | 18:35
--  16 | Guardians of the Galaxy 2           | 2017 | 20:15
--  17 | Spider-Man: Homecoming              | 2017 | 17:05
--  18 | Thor: Ragnarok                      | 2017 | 18:20
--  19 | Black Panther                       | 2018 | 20:10

-- 6.  Create a new entry in the 'people' table with the name of one of the instructors.
--
-- 		SELECT * FROM people;
-- 		INSERT INTO people (name) VALUES ('Pawel Orzechowski');
-- 		SELECT * FROM people;
--
-- 		id |         name
-- ----+----------------------
--  1 | Alexander Clements
--  2 | Graeme Congreve
--  3 | Christina Davies
--  4 | Rebekah Dixon
--  5 | Malcolm Finlayson
--  6 | Catriona Ford
--  7 | Ernest Fraiman
--  8 | David Fulton
--  9 | Ray Greenan
-- 10 | Ross Hancock
-- 11 | Chris Jennings
-- 12 | Steven Kay
-- 13 | Laura Manson
-- 14 | Nick Fury
-- 15 | Borna Maticic
-- 16 | Kevin McEwan
-- 17 | Thomas McPhee
-- 18 | Christopher Milligan
-- 19 | James Mundie
-- 20 | Jake Thwaites
-- 21 | Robin Willson
-- 22 | Paul Wishart
-- 23 | Pawel Orzechowski

-- 7.  Nick Fury has decided to hijack our movie evening, Remove him from the table of people.
--
-- 		SELECT * FROM people;
-- 		DELETE FROM people WHERE name = 'Nick Fury';
-- 		SELECT * FROM people;
--
-- 		id |         name
-- ----+----------------------
--  1 | Alexander Clements
--  2 | Graeme Congreve
--  3 | Christina Davies
--  4 | Rebekah Dixon
--  5 | Malcolm Finlayson
--  6 | Catriona Ford
--  7 | Ernest Fraiman
--  8 | David Fulton
--  9 | Ray Greenan
-- 10 | Ross Hancock
-- 11 | Chris Jennings
-- 12 | Steven Kay
-- 13 | Laura Manson
-- 15 | Borna Maticic
-- 16 | Kevin McEwan
-- 17 | Thomas McPhee
-- 18 | Christopher Milligan
-- 19 | James Mundie
-- 20 | Jake Thwaites
-- 21 | Robin Willson
-- 22 | Paul Wishart

-- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

-- 	SELECT * FROM movies;
-- 	INSERT INTO movies (title) VALUES ('Avengers: Infinity War');
-- 	SELECT * FROM movies;
--
-- 	id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--  1 | Iron Man                            | 2008 | 23:20
--  2 | The Incredible Hulk                 | 2008 | 20:35
--  3 | Iron Man 2                          | 2010 | 15:15
--  4 | Thor                                | 2011 | 16:45
--  5 | Captain America: The First Avenger  | 2011 | 21:50
--  6 | Avengers Assemble                   | 2012 | 13:50
--  7 | Iron Man 3                          | 2013 | 14:55
--  8 | Thor: The Dark World                | 2013 | 21:25
--  9 | Batman Begins                       | 2005 | 13:00
-- 10 | Captain America: The Winter Soldier | 2014 | 12:50
-- 11 | Guardians of the Galaxy             | 2014 | 12:30
-- 12 | Avengers: Age of Ultron             | 2015 | 23:05
-- 13 | Ant-Man                             | 2015 | 19:10
-- 14 | Captain America: Civil War          | 2016 | 13:50
-- 15 | Doctor Strange                      | 2016 | 18:35
-- 16 | Guardians of the Galaxy 2           | 2017 | 20:15
-- 17 | Spider-Man: Homecoming              | 2017 | 17:05
-- 18 | Thor: Ragnarok                      | 2017 | 18:20
-- 19 | Black Panther                       | 2018 | 20:10
-- 20 | Avengers: Infinity War              |      |
-- (20 rows)
--

-- 9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

-- SELECT * FROM movies WHERE title = 'Guardians of the Galaxy';
-- id |          title          | year | show_time
-- ----+-------------------------+------+-----------
-- 11 | Guardians of the Galaxy | 2014 | 12:30

-- SELECT * FROM movies;
-- UPDATE  movies SET show_time = '14:30' WHERE title = 'Guardians of the Galaxy 2';
-- SELECT * FROM movies;
--
--
-- UPDATE 1
--  id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 23:20
--   2 | The Incredible Hulk                 | 2008 | 20:35
--   3 | Iron Man 2                          | 2010 | 15:15
--   4 | Thor                                | 2011 | 16:45
--   5 | Captain America: The First Avenger  | 2011 | 21:50
--   6 | Avengers Assemble                   | 2012 | 13:50
--   7 | Iron Man 3                          | 2013 | 14:55
--   8 | Thor: The Dark World                | 2013 | 21:25
--   9 | Batman Begins                       | 2005 | 13:00
--  10 | Captain America: The Winter Soldier | 2014 | 12:50
--  11 | Guardians of the Galaxy             | 2014 | 12:30
--  12 | Avengers: Age of Ultron             | 2015 | 23:05
--  13 | Ant-Man                             | 2015 | 19:10
--  14 | Captain America: Civil War          | 2016 | 13:50
--  15 | Doctor Strange                      | 2016 | 18:35
--  17 | Spider-Man: Homecoming              | 2017 | 17:05
--  18 | Thor: Ragnarok                      | 2017 | 18:20
--  19 | Black Panther                       | 2018 | 20:10
--  16 | Guardians of the Galaxy 2           | 2017 | 14:30
-- (19 rows)

-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.
-- DELETE FROM movies WHERE year <= 2010;
--
-- DELETE FROM movies WHERE year >= 2010 AND year <= 2012;
-- DELETE FROM movies WHERE year BETWEEN 2010 AND 2012; (inclusive)
-- DELETE FROM movies WHERE year IN (2010, 2011, 2012);
-- DELETE FROM movies WHERE year = 2010 OR year = 2011 OR year = 2012;
-- DELETE FROM movies WHERE show_time <= 15:00 AND (year = 2010 OR year = 2011 OR year = 2012);
-- DELETE FROM movies WHERE show_time <= 15:00 AND NOT (year = 2010 OR year = 2011 OR year = 2012);
--
--
-- DELETE FROM movies WHERE year IN (SELECT years FROM good_years_table);
-- DELETE FROM movies WHERE year NOT IN (SELECT years FROM bad_years_table);

SELECT  id, title, year,
	CASE WHEN year < 2010 THEN 'Noughty movie'
	 		 WHEN year >= 2010 THEN 'Not Noughty movie'
			 ELSE 'Older movies'
	END AS bob_bob
FROM movies
GROUP BY year, title, id;
