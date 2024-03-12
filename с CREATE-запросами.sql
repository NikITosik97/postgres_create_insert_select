CREATE TABLE IF NOT EXISTS Genres(
	genre_id SERIAL PRIMARY KEY,
	genre_name varchar(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Musicians(
	musician_id SERIAL PRIMARY KEY,
	musician_name varchar(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_musicians(
	fk_musician_id integer REFERENCES Musicians(musician_id) NOT NULL,
	fk_genre_id integer REFERENCES Genres(genre_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums(
	album_id SERIAL PRIMARY KEY,
	album_name varchar(60) NOT NULL,
	album_year date NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums_musicians(
	fk_album_id integer REFERENCES Albums(album_id) NOT NULL,
	fk_musician_id integer REFERENCES Musicians(musician_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks(
	track_id SERIAL PRIMARY KEY,
	track_name text NOT NULL,
	duration interval NOT NULL,
	fk_album_id integer REFERENCES Albums(album_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections(
	collection_id SERIAL PRIMARY KEY,
	collection_name varchar(60) NOT NULL,
	collection_year date NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections_tracks(
	fk_track_id integer REFERENCES Tracks(track_id) NOT NULL,
	fk_collection_id integer REFERENCES Collections(collection_id)
)
