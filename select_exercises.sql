USE codeup_test_db;

SHOW TABLES ;

DESCRIBE albums;

SELECT * FROM albums;

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT * FROM albums WHERE sales < 20000000;

SELECT * FROM albums WHERE genre = 'Rock';