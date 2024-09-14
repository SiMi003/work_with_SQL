select trek_name, trek_time from treks 
	where treck_time = (select MAX(treck_time) from trecks);
	
select trek_name from treks
	where trek_time >=3.5*60;

select collection_name from collections
	where (getdate(collection_data), 'yyyy') as data  between 2018 and 2020;

select artist_name from artists
	where artist_name not like '% %';
	
select trek_name from trek
	where LOWER(treck_name) like '% my %' or LOWER(treck_name) like 'my %' or LOWER(treck_name) like '% my';

select styles.style_name, count(artists_info.artist_id) from artists_info
	join styles on artists_info.style_id = styles.style_id
	group by styles.style_name;

select count(treks.trek_id) from treks
	join albums on treks.album_id = albums.album_id
	where EXTRACT(year from albums.album_data) between 2019 and 2020;

select albums.album_name, AVG(treks.trek_time) from treks
	join albums on treks.album_id = albums.album_id
	group by albums.album_name;

select artists.artist_name from artists
	where artists.artist_id not in (
		select artist_id
		from artists_materials
		join albums on artists_materials.album_id = albums.album_id
		where EXTRACT(year from albums.album_data) = 2020
	);

select collections.collection_name from collections
	join albums_mix on collections.collection_id = albums_mix.collection_id
	join treks on albums_mix.trek_id = treks.trek_id
	join albums on treks.album_id = albums.album_id
	join artists_materials on albums.album_id = artists_materials.album_id
	join artists on artists_materials.artist_id = artists.artist_id
	where artists.artist_name = 'Lana Del Ray';  


