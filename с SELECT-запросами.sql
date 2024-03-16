--Задание 2

--Название и продолжительность самого длительного трека.

SELECT track_name, duration
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks)


--Название треков, продолжительность которых не менее 3,5 минут.

SELECT track_name, duration
FROM tracks
WHERE duration >= '00:03:30'

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT collection_name
FROM collections
WHERE collection_year BETWEEN '2018-01-01' AND '2021-01-01'

--Исполнители, чьё имя состоит из одного слова.

SELECT musician_name
FROM musicians
WHERE NOT musician_name LIKE '% %'

--Название треков, которые содержат слово «мой» или «my».

SELECT track_name
FROM tracks
WHERE track_name LIKE '%Мой%' OR track_name LIKE '%my%'

--Задание 3

--Количество исполнителей в каждом жанре.

SELECT genre_name, COUNT(fk_musician_id)
FROM genres_musicians
JOIN genres ON genres.genre_id = genres_musicians.fk_genre_id
GROUP BY genres.genre_name

--Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT album_name, COUNT(fk_album_id)
FROM tracks
JOIN albums ON tracks.fk_album_id = albums.album_id
WHERE album_year BETWEEN '2019-01-01' AND '2020-01-01'
GROUP BY album_name

--Средняя продолжительность треков по каждому альбому.

SELECT album_name, AVG(duration)
FROM tracks
JOIN albums ON tracks.fk_album_id = albums.album_id
GROUP BY album_name

--Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT musician_name
FROM albums_musicians am
JOIN albums a ON a.album_id = am.fk_album_id
JOIN musicians m ON m.musician_id = am.fk_musician_id
WHERE a.album_year NOT BETWEEN '2020-01-01' AND '2021-01-01'
GROUP BY musician_name

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT DISTINCT collection_name
FROM collections
JOIN collections_tracks ON collections_tracks.fk_collection_id = collections.collection_id
JOIN tracks ON collections_tracks.fk_track_id = tracks.track_id
JOIN albums ON tracks.fk_album_id = albums.album_id
JOIN albums_musicians ON albums.album_id = albums_musicians.fk_album_id
JOIN musicians ON musicians.musician_id = albums_musicians.fk_musician_id
WHERE musicians.musician_name = 'KIZARU'









