
-- This a comment

-- In SQL there are two of statements (and everything is a statement)
-- 1. Commands : These are statements that when executed effect some change on the database.
-- 2. Queries : These are statments that when executed return data for read-only purposes.

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 1
);


-- CRUDS

-- Create
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "George",
    "Robinson",
    "Painting"
);

--Read
SELECT * FROM user WHERE id=1;

--Optional examples to try:
SELECT last_name, first_name, hobbies FROM user WHERE id=1;
SELECT last_name, first_name FROM user WHERE id > 5 AND first_name="George";

-- Scan (is technically a type of read operation)
SELECT * FROM user;

-- Update
UPDATE user SET 
    first_name="John",
    last_name="Doe",
    hobbies="Playing golf and waching tennis"
WHERE id=1;

-- Delete
DELETE FROM user WHERE id=1;

-- Mini

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jane",
    "Doe",
    "Playing tennis and video games"
);

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Tom",
    "Jones",
    "Likes to ski and bird watch"
);

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jenny",
    "Rodgers",
    "Likes to code and watch YouTube videos"
);

SELECT * FROM user;

UPDATE user SET 
    first_name="Thomas"
WHERE first_name = "Tom" AND last_name = "Jones";

DELETE FROM user WHERE first_name = "Jane" AND last_name = "Doe";

SELECT last_name, first_name, hobbies, id FROM user;

--Bonus

CREATE TABLE sneakers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    brand VARCHAR(15),
    shoe_size INTEGER,
    sport TEXT
);


