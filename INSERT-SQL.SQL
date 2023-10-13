-- таблица исполнителей
INSERT INTO public.artist (name_or_nickname) VALUES('Kate');
INSERT INTO public.artist (name_or_nickname) VALUES('Sara');
INSERT INTO public.artist (name_or_nickname) VALUES('Igor Stay');
INSERT INTO public.artist (name_or_nickname) VALUES('Betty');
INSERT INTO public.artist (name_or_nickname) VALUES('Peter Van');
INSERT INTO public.artist (name_or_nickname) VALUES('George White');
INSERT INTO public.artist (name_or_nickname) VALUES('Bale');

-- таблица жанров
INSERT INTO public.genre (genre_name) VALUES('pop');
INSERT INTO public.genre (genre_name) VALUES('rock');
INSERT INTO public.genre (genre_name) VALUES('jazz');

-- таблица альбомов
INSERT INTO public.album (album_title, year_of_release) VALUES('My First', 1998);
INSERT INTO public.album (album_title, year_of_release) VALUES('My Second', 2000);
INSERT INTO public.album (album_title, year_of_release) VALUES('My Third', 2002);
INSERT INTO public.album (album_title, year_of_release) VALUES('Paris', 1990);
INSERT INTO public.album (album_title, year_of_release) VALUES('Renn', 1998);
INSERT INTO public.album (album_title, year_of_release) VALUES('City', 2012);
INSERT INTO public.album (album_title, year_of_release) VALUES('People', 2008);
INSERT INTO public.album (album_title, year_of_release) VALUES('Zero', 2013);
INSERT INTO public.album (album_title, year_of_release) VALUES('Hero', 2020);
INSERT INTO public.album (album_title, year_of_release) VALUES('Pretty girl', 2012);
INSERT INTO public.album (album_title, year_of_release) VALUES('Twenty', 2015);
INSERT INTO public.album (album_title, year_of_release) VALUES('Two Boys', 2004);
INSERT INTO public.album (album_title, year_of_release) VALUES('Blue Lagoon', 2018);
INSERT INTO public.album (album_title, year_of_release) VALUES('Error', 2019);

-- таблица треков
INSERT INTO public.track (track_name, duration, album_id) VALUES('My Inna', 100, 1);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Мой друг', 200, 2);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Твой наш', 102, 2);
INSERT INTO public.track (track_name, duration, album_id) VALUES('My Filter', 502, 3);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Virus', 850, 4);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Bell', 500, 5);
INSERT INTO public.track (track_name, duration, album_id) VALUES('My Love', 505, 5);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Inner', 103, 5);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Outer', 506, 6);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Sing', 322, 6);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Song', 333, 3);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Every year', 322, 3);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Cool', 230, 6);
INSERT INTO public.track (track_name, duration, album_id) VALUES('nickname', 226, 6);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Peter', 225, 7);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Angry', 225, 7);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Hello', 225, 8);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Song for you', 300, 8);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Tales', 318, 9);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Baron', 156, 9);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Lagoon', 185, 10);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Doctor', 600, 4);
INSERT INTO public.track (track_name, duration, album_id) VALUES('My name', 601, 10);
INSERT INTO public.track (track_name, duration, album_id) VALUES('follow my brother', 350, 11);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Here', 250, 11);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Wrong', 200, 12);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Citizen', 188, 12);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Apart', 188, 13);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Not my', 195, 13);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Very interesting', 198, 14);
INSERT INTO public.track (track_name, duration, album_id) VALUES('Bull', 165, 14);

-- таблица сборников
INSERT INTO public.songster (songster_title, year_of_release) VALUES('The best', 2020);
INSERT INTO public.songster (songster_title, year_of_release) VALUES('Who is it?', 2022);
INSERT INTO public.songster (songster_title, year_of_release) VALUES('Angry songs', 2018);
INSERT INTO public.songster (songster_title, year_of_release) VALUES('Everything 2005', 2005);

-- таблица артист-альбом
INSERT INTO public.artist_album (artist_id, album_id) VALUES(1, 1);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(1, 2);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(1, 3);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(2, 4);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(2, 5);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(3, 6);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(4, 7);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(4, 8);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(5, 9);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(5, 10);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(5, 11);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(6, 12);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(6, 13);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(7, 14);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(7, 13);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(3, 13);
INSERT INTO public.artist_album (artist_id, album_id) VALUES(4, 13);

-- таблица артист-жанр
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(1, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(1, 2);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(2, 3);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(3, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(4, 3);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(4, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(5, 2);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(6, 2);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(7, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(7, 2);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES(7, 3);

-- таблица сборник-трек
INSERT INTO public.songster_track (songster_id, track_id) VALUES(1, 10);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(1, 11);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(1, 22);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(1, 24);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(2, 2);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(2, 3);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(2, 31);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(2, 32);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(3, 19);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(3, 25);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(3, 26);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(4, 5);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(4, 27);
INSERT INTO public.songster_track (songster_id, track_id) VALUES(4, 28);
