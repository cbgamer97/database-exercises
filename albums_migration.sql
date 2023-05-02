CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name  VARCHAR(100) NOT NULL,
    release_date INT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
    );