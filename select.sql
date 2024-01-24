
/* Название и продолжительность самого длительного трека.*/
SELECT name_track AS Название, duration AS Длительность
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);


/*Название треков, продолжительность которых не менее 3,5 минут.*/
SELECT name_track as Название, duration as Длительность
FROM track
WHERE duration > 210;

/*Названия сборников, вышедших в период с 2018 по 2020 год включительно.*/
SELECT collection_name as Сборник, year_of_release as Год
FROM collection
WHERE year_of_release >= 2018 AND year_of_release <= 2020; 

/*Исполнители, чьё имя состоит из одного слова*/
SELECT first_name AS Имя
FROM executer
WHERE first_name NOT LIKE'% %';


/*Название треков, которые содержат слово «мой» или «my»*/
SELECT name_track AS Название
FROM track
WHERE name_track LIKE '%My%' OR name_track LIKE '%Мой%';


/*Количество исполнителей в каждом жанре*/
SELECT title, COUNT(*) AS Количество
FROM Genres
JOIN Genres_executor ON Genres.genres_id = Genres_executor.genres_id
GROUP BY title
ORDER BY Количество DESC;

/*Количество треков, вошедших в альбомы 2019–2020 годов.*/

SELECT COUNT(track_id)
FROM track 
JOIN album ON track.album_id = album.album_id
WHERE year BETWEEN 2019 AND 2020;

/*Средняя продолжительность треков по каждому альбому*/
SELECT list_album AS Альбом, AVG(duration) as Продолжительность
FROM track
JOIN album ON track.album_id = album.album_id
GROUP BY list_album;

/*Все исполнители, которые не выпустили альбомы в 2020 году*/
select name_nickname
from executer
where name_nickname not in (select DISTINCT name_nickname
							from executer
							JOIN Executer_album ON Executer_album.executer_id = executer.executer_id  
							JOIN album ON Executer_album.album_id = album.album_id 
							WHERE year = 2020);
						
						
select distinct collection_name
from collection
JOIN collection_track ON collection.collection_id = collection_track.collection_id 
JOIN track ON collection_track.track_id = track.track_id 
JOIN album ON track.album_id = album.album_id
JOIN Executer_album ON album.album_id = Executer_album.album_id 
JOIN executer ON Executer_album.executer_id = executer.executer_id 
WHERE first_name = 'Madonna' AND last_name = 'Ciccone';






