-- Название и продолжительность самого длительного трека.

SELECT  track_name, (duration /60 % 60) as minutes, (duration % 60) as seconds FROM track
WHERE duration = (SELECT max(duration) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут.

SELECT track_name from track
where duration > 3.5*60;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select songster_title from songster
where year_of_release BETWEEN 2018 and 2020; 

-- Исполнители, чьё имя состоит из одного слова.

select name_or_nickname from artist
where name_or_nickname not like '% %';

-- Название треков, которые содержат слово «мой» или «my».

SELECT track_name from track
where lower(track_name) like '%my%' or lower(track_name) like '%мой%';

-- Количество исполнителей в каждом жанре.

select g.genre_name, COUNT(artist_id) from genre g 
join artist_genre ag on g.genre_id = ag.genre_id
group by g.genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов.

select COUNT(t.track_id) as count_tracks_in_albums_2018_2020 from track t
join album al on t.album_id = al.album_id 
where al.year_of_release between 2019 and 2020;

-- Средняя продолжительность треков по каждому альбому.

select a.album_title, AVG(t.duration) as average_tracks_duration_sec from track t 
join album a on t.album_id = a.album_id 
group by a.album_title
order by average_tracks_duration_sec;

-- Все исполнители, которые не выпустили альбомы в 2020 году

select a.name_or_nickname from artist a
where a.name_or_nickname not in 
(select a.name_or_nickname from artist a 
join artist_album aa on a.artist_id = aa.artist_id 
join album al on aa.album_id = al.album_id 
where al.year_of_release = 2020);

-- Названия сборников, в которых присутствует конкретный исполнитель (Igor Stay).

select distinct s.songster_title from songster s
join songster_track st on s.songster_id =  st.songster_id
join track t on st.track_id = t.track_id
join album al on t.album_id = al.album_id
join artist_album aa on al.album_id = aa.album_id
join artist a on aa.artist_id = a.artist_id 
where a.name_or_nickname = 'Igor Stay';