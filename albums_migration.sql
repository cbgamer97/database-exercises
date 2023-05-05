USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id int AUTO_INCREMENT,
    artist CHAR(50),
    name CHAR(50),
    release_date int,
    sales FLOAT,
    genre CHAR(50),
    PRIMARY KEY (id)
);

DESCRIBE albums;

# update name char limit to 100
ALTER TABLE albums MODIFY COLUMN name CHAR(100);