CREATE TABLE Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE GenreArtist (
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	artist_id INTEGER NOT NULL REFERENCES Artist(id)
--	CONSTRAINT gapk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE AlbumArtist (
	album_id INTEGER NOT NULL REFERENCES Album(id),
	artist_id INTEGER NOT NULL REFERENCES Artist(id)
--	CONSTRAINT aapk PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE Track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	name VARCHAR(60) NOT NULL,
	duration TIME NOT NULL
);

CREATE TABLE Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE TrackCollection (
	track_id INTEGER NOT NULL REFERENCES Track(id),
	collection_id INTEGER NOT NULL REFERENCES Collection(id)
--	CONSTRAINT tcpk PRIMARY KEY (track_id, collection_id)
);