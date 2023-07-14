create table if not exists Albums (
	album_id integer primary key,
	album_name varchar(60) not null,
	album_year integer not null
);

create table if not exists Musicians (
	musician_id integer primary key,
	musician_name varchar(60) not null
);

create table if not exists MusiciansAlbums (
	musician_id integer references Musicians(musician_id),
	album_id integer references Albums(album_id),
	primary key(musician_id, album_id)
);

create table if not exists Genres (
	genre_id integer primary key,
	genre_name varchar(60) not null
);

create table if not exists MusiciansGenres (
	musician_id integer references Musicians(musician_id),
	genre_id integer references Genres(genre_id),
	primary key(musician_id, genre_id)
);

create table if not exists Tracks (
	track_id integer primary key,
	track_name varchar(60) not null,
	duration integer not null,
	album_id integer references albums(id)
);

create table if not exists Collection (
	collection_id integer primary key,
	collection_name varchar(60) not null,
	collection_year integer not null
);

create table if not exists TracksCollection (
	track_id integer references Tracks(track_id),
	collection_id integer references Collection(collection_id),
	primary key(track_id, collection_id)
);
