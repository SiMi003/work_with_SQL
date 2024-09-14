CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL PRIMARY KEY, 
	artist_name VARCHAR(60) UNIQUE
);

CREATE TABLE IF NOT EXISTS styles (
	style_id SERIAL PRIMARY KEY, 
	style_name VARCHAR(40) UNIQUE
);

CREATE TABLE IF NOT EXISTS artists_info (
	artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
	style_id INTEGER NOT NULL REFERENCES styles(style_id),
	CONSTRAINT pk PRIMARY KEY (artist_id, style_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY, 
	album_name VARCHAR(80),
	album_data DATE
);

CREATE TABLE IF NOT EXISTS artists_materials (
	artist_id VARCHAR(60) NOT NULL REFERENCES artists(artist_name),
	album_id VARCHAR(80) NOT NULL REFERENCES albums(album_id),
	CONSTRAINT pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS treks (
	trek_id SERIAL PRIMARY KEY,
	trek_name VARCHAR(80),
	trek_time TIME, 
	album_id INTEGER NOT NULL REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(80), 
	collection_data DATE
);

CREATE TABLE IF NOT EXISTS albums_mix (
	mix_id SERIAL PRIMARY KEY,
	trek_id INTEGER REFERENCES treks(trek_id),
	collection_id INTEGER NOT NULL REFERENCES collections(collection_id)
);
