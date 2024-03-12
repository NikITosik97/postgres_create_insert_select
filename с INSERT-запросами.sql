INSERT INTO genres(genre_name) VALUES('Rap');
INSERT INTO genres(genre_name) VALUES('Trap');
INSERT INTO genres(genre_name) VALUES('Rock');

INSERT INTO musicians(musician_name) VALUES('KIZARU');
INSERT INTO musicians(musician_name) VALUES('Тони раут');
INSERT INTO musicians(musician_name) VALUES('Anacondaz');
INSERT INTO musicians(musician_name) VALUES('Слава КПСС');

INSERT INTO genres_musicians(fk_musician_id, fk_genre_id) VALUES(1, 2);
INSERT INTO genres_musicians(fk_musician_id, fk_genre_id) VALUES(2, 1);
INSERT INTO genres_musicians(fk_musician_id, fk_genre_id) VALUES(3, 3);
INSERT INTO genres_musicians(fk_musician_id, fk_genre_id) VALUES(3, 1);
INSERT INTO genres_musicians(fk_musician_id, fk_genre_id) VALUES(4, 1);

INSERT INTO albums(album_name, album_year) VALUES('Karmageddon', '2019-08-14');
INSERT INTO albums(album_name, album_year) VALUES('Kaonashi', '2021-01-28');
INSERT INTO albums(album_name, album_year) VALUES('Я Тебя Никогда', '2018-10-11');
INSERT INTO albums(album_name, album_year) VALUES('Ангельское True', '2022-10-20');

INSERT INTO albums_musicians(fk_album_id, fk_musician_id) VALUES(1, 1);
INSERT INTO albums_musicians(fk_album_id, fk_musician_id) VALUES(2, 2);
INSERT INTO albums_musicians(fk_album_id, fk_musician_id) VALUES(3, 3);
INSERT INTO albums_musicians(fk_album_id, fk_musician_id) VALUES(4, 4);

INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('Dezhavyu', '00:02:54', 1);
INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('MONEY LONG', '00:02:28', 1);
INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('Интроверт', '00:03:03', 2);
INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('Не курю', '00:03:56', 3);
INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('Eminem Show', '00:01:36', 4);
INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('Hollywood', '00:04:58', 4);
INSERT INTO tracks(track_name, duration, fk_album_id) VALUES('Мой зверь', '00:02:40', 2);

INSERT INTO collections(collection_name, collection_year) VALUES('Collection Rap and Trap', '2024-03-11');
INSERT INTO collections(collection_name, collection_year) VALUES('Collection Rap and Rock', '2020-03-11');
INSERT INTO collections(collection_name, collection_year) VALUES('Collection Trap and Rock', '2024-03-11');
INSERT INTO collections(collection_name, collection_year) VALUES('All collection', '2017-03-11');

INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(1, 1);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(3, 1);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(5, 1);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(3, 2);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(4, 2);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(2, 3);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(4, 3);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(6, 4);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(1, 4);
INSERT INTO collections_tracks(fk_track_id, fk_collection_id) VALUES(3, 4);