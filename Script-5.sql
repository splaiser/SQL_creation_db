select count(artist_id), genre_id from artist_genres ag 
	group by genre_id ;
select count(track_id) from track_list 
	join albums on albums.album_id = track_list.album_id
	where year_of_creation <= 2020 and year_of_creation >= 2019;
select album_id,avg(duration) from track_list tl
	group by album_id ;
select artist.name from artist
	where artist.name not in (
	select artist.name from artist
	left join artist_albums on artist.artist_id = artist_albums.artist_id 
	left join albums on albums.album_id = artist_albums.album_id 
	where albums.year_of_creation = 2020)
	order by artist.name
select compilation_name from compilation_tracks  
	join track_list on compilation_tracks.track_id  = track_list.track_id 
	join compilation on compilation_tracks.compilation_id  = compilation.compilation_id
	join albums on albums.album_id = track_list.track_id 
	join artist_albums on artist_albums.album_id = albums.album_id 
	join artist on artist.artist_id = artist_albums.artist_id 
	where artist.name in ('Artist6');
select albums.album_name,count(genres.genre_id) as cnt  from artist_albums 
	right join albums on artist_albums.album_id = albums.album_id
	right join artist on artist_albums.artist_id = artist.artist_id 
	right join artist_genres on artist_genres.artist_id = artist.artist_id 
	right join genres on artist_genres.genre_id = genres.genre_id
	group by albums.album_name
	having count(genres.genre_id) > 1;
select track_name from compilation_tracks
	full join compilation on compilation_tracks.compilation_id = compilation.compilation_id 
	full join track_list on compilation_tracks.track_id = track_list.track_id 
	where compilation.compilation_id is null;
select track_name,duration from track_list tl
	where duration  <= (select min(duration) from track_list tl2 );
select albums.album_name as albums, count(track_id) as track_count from track_list 
	left join albums on track_list.album_id = albums.album_id
	group by albums
	having count(track_id) = (select count(track_id) as track_count from track_list 
	left join albums on track_list.album_id = albums.album_id
	group by albums
	order by track_count
	limit 1)