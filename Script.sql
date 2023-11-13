CREATE TABLE IF NOT EXISTS Artist (
  artist_id SERIAL PRIMARY KEY, 
  name VARCHAR(40) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Genre (
  genre_id SERIAL PRIMARY KEY, 
  name VARCHAR(40) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Artist_genre (
  artist_genre_id SERIAL PRIMARY KEY,
  genre_id INTEGER NOT NULL REFERENCES Genre(genre_id), 
  artist_id INTEGER NOT NULL REFERENCES Artist(artist_id) 
);

CREATE TABLE IF NOT EXISTS Album (
  album_id SERIAL PRIMARY KEY, 
  name VARCHAR(40) NOT NULL, 
  year_of_release date NOT NULL 
);

CREATE TABLE IF NOT EXISTS Track (
  track_id SERIAL PRIMARY KEY,
  album_id INTEGER NOT NULL REFERENCES Album(album_id),
  name VARCHAR(40) NOT NULL,
  duration time NOT NULL 
);

CREATE TABLE IF NOT EXISTS Playlist (
  playlist_id SERIAL PRIMARY KEY, 
  name VARCHAR(40) NOT NULL, 
  year_of_release date NOT NULL 
);

CREATE TABLE IF NOT EXISTS Full_album (
  full_album_id SERIAL PRIMARY KEY,
  album_id INTEGER NOT NULL REFERENCES Album(album_id), 
  artist_id INTEGER NOT NULL REFERENCES Artist(artist_id)
 );

CREATE TABLE IF NOT EXISTS Full_playlist (
  full_playlist_id SERIAL PRIMARY KEY,
  playlist_id INTEGER NOT NULL REFERENCES Playlist(playlist_id),
  track_id INTEGER NOT NULL REFERENCES Track(track_id)
);

