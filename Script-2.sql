insert into artists(artist_name)
values 
		('Rammstein'),
		('Adele'),
		('Lana del Rey'),
		('DDT'),
		('Måneskin'),
		('Radiohead');
		
insert into styles(style_name)
values
		('industrial metal'),
		('heavy metal'),
		('pop soul'),
		('baroque pop rock'),
		('rock'),
		('pop rock'),
		('alternative rock'),
		('art rock');
	
insert into artists_info(artist_id, style_id)
values
		(1, 1),
		(1, 2),
		(2, 3),
		(3, 4),
		(3, 6),
		(3, 8),
		(4, 5),
		(5, 6),
		(5, 7),
		(5, 8),
		(6, 7),
		(6, 8);
		
insert into albums(album_name, album_data)
values
		('Mutter', '2001-01-01 00:00:00'),
		('Rammstein', '2019-01-01 00:00:00'),
		('21', '2011-01-01 00:00:00'),
		('Born to Die: The Paradise Edition', '2012-01-01 00:00:00'),
		('Lust for Life', '2017-01-01 00:00:00'),
		('Волки в тире', '2023-01-01 00:00:00'),
		('Прозрачный', '2014-01-01 00:00:00'),
		('Любовь', '1996-01-01 00:00:00'),
		('Il ballo della vita', '2018-01-01 00:00:00'),
		('Pablo Honey', '1993-01-01 00:00:00');

insert into artists_materials(artist_id, album_id)
values 
		(1, 1),
		(1, 2),
		(2, 3),
		(3, 4),
		(3, 5),
		(4, 6),
		(4, 7),
		(4, 8),
		(5, 9),
		(6, 10);
		
insert into treks(trek_name, trek_time, album_id)
values
		('Mutter', 269, 1),
		('Ich will', 217, 1),
		('My Deutschland', 322, 2),
		('Someone Like You', 285, 3),
		('Ride', 289, 4),
		('Born to Die', 286, 4),
		('Summertime Sadness', 266, 4),
		('When the world was at war we kept dancing', 276, 5),
		('Cherry', 181, 5),
		('Волки в тире', 324, 6),
		('Новости', 227, 6),
		('Надежда', 146, 6),
		('Туман', 241, 7),
		('Вороны', 244, 8),
		('Torna a casa', 230, 9),
		('Creep', 236, 10);

	
insert into collections(collection_name, collection_data)
values
		('Barcelona Rammstain concert', '2024-01-01 00:00:00'),
		('Vienna DDT concert', '2024-01-01 00:00:00'),
		('Running', '2019-01-01 00:00:00'),
		('Favorit', '2018-01-01 00:00:00');

		
insert into albums_mix(trek_id, collection_id)
values
		(1, 1), (2, 1), (3, 1),
		(10, 2), (11, 2), (12, 2), (13, 2), (14, 2), (14, 2),
		(4, 3), (5, 3), (6, 3), (7, 3), (8, 3), (9, 3), (15, 3), (16, 3),
		(1, 4), (2, 4), (3, 4), (4, 4), (5, 4), (6, 4), (7, 4), (8, 4), (9, 4), (10, 4), (11, 4), (12, 4), (13, 4),
		(14, 4), (15, 4);
		
