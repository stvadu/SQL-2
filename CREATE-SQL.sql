CREATE TABLE IF NOT EXISTS Genre (
	Genre_id SERIAL PRIMARY KEY,
	Genre_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist(
	Artist_id SERIAL PRIMARY KEY,
	Name_or_nickname VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Album(
	Album_id SERIAL PRIMARY KEY,
	Album_title VARCHAR(80) NOT NULL,
	Year_of_release SMALLINT
);

CREATE TABLE IF NOT EXISTS Songster (
	Songster_id SERIAL PRIMARY KEY,
	Songster_title VARCHAR(80) NOT NULL,
	Year_of_release SMALLINT
);

-- 1 ко многим

CREATE TABLE IF NOT EXISTS Track (
	Track_id BIGSERIAL PRIMARY KEY,
	Track_name VARCHAR(80),
	Duration INTEGER,
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id)
);

-- многие ко многим

CREATE TABLE IF NOT EXISTS Artist_Genre (
	Artist_Genre_id SERIAL PRIMARY KEY,
	Artist_id INTEGER NOT NULL REFERENCES Artist(Artist_id),
	Genre_id INTEGER NOT NULL REFERENCES Genre(Genre_id)
);

CREATE TABLE IF NOT EXISTS Artist_Album (
	Artist_Album_id SERIAL PRIMARY KEY,
	Artist_id INTEGER NOT NULL REFERENCES Artist(Artist_id),
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id)
);

CREATE TABLE IF NOT EXISTS Songster_Track (
	Songster_Track_id BIGSERIAL PRIMARY KEY,
	Songster_id INTEGER NOT NULL REFERENCES Songster(Songster_id),
	Track_id BIGINT NOT NULL REFERENCES Track(Track_id)
);









