/*
 * TODO: Create a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 * 
 * Note that album - song is a one-to-many relationship, so no bridge table is needed.
 */
CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME VARCHAR(70) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)

);

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)
 */
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016)
;
INSERT INTO Songs
    (name, album_id)
VALUES
    ('Do It')
    ('Stand Still')
    ('One Love')
    ('Empire')
/* Queries */

-- SELECT * FROM Songs;

SELECT * FROM Albums;
/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */
SELECT * FROM Songs;
JOIN Song.name on Album.name = Songname.albumname
/*
 * TODO: Find all albums published between 1970 and 1980.
 */
SELECT * FROM Songs;
ON Albums_id = Songsalbum_id
WHERE Albums.year_published > 1970 AND Albums.year-published < 1980
/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
SELECT * FROM Songs;
JOIN Song_id on Album_id = Song_id.albumname
WHERE Album.year_published > 1970 AND Album.year_published < 1980
 
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */