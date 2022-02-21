CREATE TABLE IF NOT EXISTS genres (
genre_id SERIAL PRIMARY KEY,
genre_name VARCHAR(244) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS artist (
artist_id SERIAL PRIMARY KEY,
name VARCHAR(244) NOT NULL
);
CREATE TABLE IF NOT EXISTS track_list (
track_id SERIAL PRIMARY KEY,
track_name VARCHAR(244) NOT NULL,
duration NUMERIC(244) NOT NULL
);
CREATE TABLE IF NOT EXISTS albums (
album_id SERIAL PRIMARY KEY,
track_id INTEGER not NULL references track_list(track_id),
album_name VARCHAR(244) NOT NULL,
year_of_creation INTEGER NOT NULL
);
create table if not exists compilation (
compilation_id SERIAL PRIMARY key, 
compilation_name VARCHAR(244) not null,
year_of_creation INTEGER not NULL
);
create table if not exists artist_genres (
artist_id INTEGER references artist(artist_id),
genre_id INTEGER REFERENCES genres(genre_id),
constraint artists_genres primary key (artist_id,genre_id)
);
create table if not exists artist_albums (
artist_id INTEGER references artist(artist_id),
album_id INTEGER REFERENCES albums(album_id),
constraint artists_albums primary key (artist_id,album_id)
);
create table if not exists compilation_tracks  (
track_id INTEGER references track_list(track_id),
compilation_id INTEGER REFERENCES compilation(compilation_id),
constraint compilations_tracks primary key (track_id,compilation_id)
);

