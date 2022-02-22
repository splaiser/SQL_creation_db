select album_name,year_of_creation 
	from albums
	where year_of_creation = 2018;
select track_name,duration from track_list tl
	where duration  = (select max(duration) from track_list tl2 );
select track_name from track_list tl 
	where duration >= 3.5;
select compilation_name from compilation c 
	where year_of_creation >= 2018 and year_of_creation <= 2020;
select name from artist a 
	where (length(name) - length (replace(name, ' ',''))+1)=1;
select track_name from track_list tl 
	where track_name ilike '%my%';	