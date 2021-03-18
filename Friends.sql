-- Creates a new table 'friends'
CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

-- Adds a friend 'Ororo' and their id and birthday
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

-- Adds two more friends to the table
INSERT INTO friends (id, name, birthday)
VALUES (2, 'James Smith', '1956-03-18');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Bob Jones', '1960-12-08');

-- Ororo wants to change her name to 'Wendy'
UPDATE friends
SET name = 'Wendy Munroe'
WHERE id = 1;

-- Adds a new column named 'email'
ALTER TABLE friends 
ADD COLUMN email TEXT; 

-- Adds an email address for the three friends
UPDATE friends
SET email = 'Wendy@gmail.com'
WHERE id - 1;

UPDATE friends
SET email = 'James@gmail.com'
WHERE id - 2;

UPDATE friends
SET email = 'Bob@gmail.com'
WHERE id - 3;

-- Checks to make sure that everything has been updated
SELECT * 
FROM friends;