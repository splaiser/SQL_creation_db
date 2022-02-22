insert into artist(name)
	VALUES('Artist1'),('Artist2'),('Artist3'),('Artist4'),('Artist5'),('Artist6'),('Artist7'),('Artist8');
insert into genres(genre_name)
	values('genre1'),('genre2'),('genre3'),('genre4'),('genre5');
insert into albums(album_name,year_of_creation)
	VALUES('album1', 2011),('album2',2012),('album3', 2013),('album4', 2014),('album5', 2015),('album6', 2016),('album7', 2017),('album8', 2018),('album9', 2019),('album10', 2020);
insert into track_list(track_name,album_id,duration)
	values('my track1',2, 3.5),('my track2',1, 4.1),('my track3',1, 9.3),('my track4',2, 2.5),('my track5',3, 1.2),('my track6',4, 3.4),('my track7',5, 2.9),('my track8',4, 3.1),
	('my track9',2, 3.7),('track1',1, 2.6),('track2',8, 2.5),('track2',4, 1.7),('track3',6, 4.2),('track4',9, 2.3),('track5',5, 4.2),('track6',7, 3.7),
	('track7',4, 2.8),('track8',8, 8),('track9',6, 3.5),('artist track1',5, 8.9),('artist track2',9, 5.7),('artist track3',10, 7.5),('artist track4',4, 4.3),
	('artist track4',7, 3.3),('artist track5',6, 4.4);
insert into compilation (compilation_name,year_of_creation)
	values('compilation1', 2011),('compilation2', 2012),('compilation3', 2013),('compilation4', 2014),('compilation5', 2015),('compilation6', 2016),
	('compilation7', 2017),('compilation8', 2018),('compilation9', 2019),('compilation10', 2020);
insert into artist_genres(artist_id,genre_id)
	values(1,2),(1,3),(1,5),(1,1),(1,4),(2,1),(2,2),(2,3),(3,2),(3,4),(4,4),(5,5),(6,4),(6,2),(7,5),(8,2),(8,3);
insert into artist_albums(artist_id,album_id)
	values(1,10),(2,10),(1,5),(1,6),(1,8),(2,4),(2,6),(3,3),(2,1),(3,9),(3,7),(4,2),(5,6),(6,4),(6,8),(8,1),(8,2),(8,4);
insert into compilation_tracks(track_id,compilation_id)
	values(11,2),(23,4),(12,5),(4,8),(11,5),(2,1),(3,7),(5,6),(2,9),(3,8),(6,2),(14,4),(6,8),(6,4),(6,7),(8,1),(8,6),(8,7),(8,3); 		