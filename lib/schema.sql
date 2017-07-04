-- Series
-- -
-- SeriesID id PK
-- title TEXT
-- AuthorID INTEGER FK >- Author.AuthorID
-- SubGenreID INTEGER FK >- SubGenre.SubGenreID

CREATE TABLE series(
	id INTEGER PRIMARY KEY,
	title TEXT,
	author_id INTEGER,
	subgenre_id INTEGER
);

-- Books
-- -
-- BookID id PK
-- title TEXT
-- SeriesID id FK >- Series.SeriesID
-- year INTEGER

CREATE TABLE books(
	id INTEGER PRIMARY KEY,
	title TEXT,
	year INTEGER,
	series_id INTEGER
);

-- Author
-- -
-- AuthorID id PK
-- name TEXT

CREATE TABLE authors(
	id INTEGER PRIMARY KEY,
	name TEXT
);
-- SubGenre
-- -
-- SubGenreID id PK
-- name TEXT

CREATE TABLE subgenres(
	id INTEGER PRIMARY KEY,
	name TEXT
);

-- Characters
-- -
-- CharacterID id PK
-- name TEXT
-- motto TEXT
-- SeriesID id FK >- Series.SeriesID
-- AuthorID id FK >- Author.AuthorID

CREATE TABLE characters (
	id INTEGER PRIMARY KEY,
	name TEXT,
	motto TEXT,
	species TEXT,
	series_id INTEGER,
	author_id INTEGER
);

CREATE TABLE character_books(
	id INTEGER PRIMARY KEY,
	book_id INTEGER,
	character_id INTEGER
);

-- Character_Books
-- -
-- CharacterID id FK >- Characters.CharacterID
-- Book id FK >- Books.BookID

	-- Characters, Books, 
	-- Series, Authors, and Sub-Genres

