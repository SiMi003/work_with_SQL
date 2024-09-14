select trek_name, trek_time from treks 
	order by trek_time DESC
	limit 1;
	
select trek_name from treks
	where trek_time >=3.5*60;

select collection_name from collections
	where (getdate(collection_data), 'yyyy') as data  between 2018 and 2020;

select artist_name from artists
	where artist_name NOT LIKE '% %';
	
select trek_name from trek
	where LOWER(treck_name) LIKE '% my %' OR LOWER(treck_name) LIKE 'my %' OR LOWER(treck_name) LIKE '% my';



