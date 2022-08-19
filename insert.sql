--Задание 1
--Заполните базу данных из предыдущего домашнего задания. В ней должно быть:
--
--не менее 8 исполнителей;
--не менее 5 жанров;
--не менее 8 альбомов;
--не менее 15 треков;
--не менее 8 сборников.
--Внимание! Должны быть заполнены все поля каждой таблицы, в т.ч. таблицы связей (исполнителей с жанрами, исполнителей с альбомами, сборников с треками).
INSERT INTO albums (id, "name", yaer) VALUES(21, 'album1', 2019);
INSERT INTO albums (id, "name", yaer) VALUES(22, 'album2', 2020);
INSERT INTO albums (id, "name", yaer) VALUES(23, 'album3', 2019);
INSERT INTO albums (id, "name", yaer) VALUES(24, 'album4', 2019);
INSERT INTO albums (id, "name", yaer) VALUES(15, 'dance album', 2018);
INSERT INTO albums (id, "name", yaer) VALUES(16, 'pop album', 2017);
INSERT INTO albums (id, "name", yaer) VALUES(17, 'roc album', 2018);
INSERT INTO albums (id, "name", yaer) VALUES(18, 'nitro album', 2020);
INSERT INTO albums (id, "name", yaer) VALUES(20, 'zero album', 2022);
INSERT INTO albums (id, "name", yaer) VALUES(19, 'gold album', 2020);

INSERT INTO artists (id, "name") VALUES(4, 'Bob');
INSERT INTO artists (id, "name") VALUES(5, 'Van');
INSERT INTO artists (id, "name") VALUES(6, 'Djo');
INSERT INTO artists (id, "name") VALUES(8, 'Vera');
INSERT INTO artists (id, "name") VALUES(9, 'Chig');
INSERT INTO artists (id, "name") VALUES(10, 'Sid');
INSERT INTO artists (id, "name") VALUES(11, 'Djim');
INSERT INTO artists (id, "name") VALUES(12, 'Yo');
INSERT INTO artists (id, "name") VALUES(7, 'Kuk Kukovich');

INSERT INTO artists_albums (id_artist, id_album) VALUES(4, 16);
INSERT INTO artists_albums (id_artist, id_album) VALUES(7, 19);
INSERT INTO artists_albums (id_artist, id_album) VALUES(5, 19);
INSERT INTO artists_albums (id_artist, id_album) VALUES(12, 15);
INSERT INTO artists_albums (id_artist, id_album) VALUES(7, 20);
INSERT INTO artists_albums (id_artist, id_album) VALUES(10, 18);
INSERT INTO artists_albums (id_artist, id_album) VALUES(6, 15);
INSERT INTO artists_albums (id_artist, id_album) VALUES(11, 17);
INSERT INTO artists_albums (id_artist, id_album) VALUES(9, 17);

INSERT INTO collections (id, "name", yaer) VALUES(1, 'col1', 2018);
INSERT INTO collections (id, "name", yaer) VALUES(2, 'col2', 2100);
INSERT INTO collections (id, "name", yaer) VALUES(3, 'col3', 2019);
INSERT INTO collections (id, "name", yaer) VALUES(4, 'col4', 2022);
INSERT INTO collections (id, "name", yaer) VALUES(5, 'col5', 2010);
INSERT INTO collections (id, "name", yaer) VALUES(6, 'col6', 2023);
INSERT INTO collections (id, "name", yaer) VALUES(7, 'col7', 2003);
INSERT INTO collections (id, "name", yaer) VALUES(8, 'col8', 2005);

INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(20, 8);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(25, 10);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(21, 4);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(20, 9);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(20, 12);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(25, 8);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(23, 4);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(21, 9);
INSERT INTO ganres_artists (id_ganre, id_artist) VALUES(26, 9);

INSERT INTO genres (id, ganre) VALUES(20, 'dance');
INSERT INTO genres (id, ganre) VALUES(21, 'jamp');
INSERT INTO genres (id, ganre) VALUES(22, 'pop');
INSERT INTO genres (id, ganre) VALUES(23, 'pip');
INSERT INTO genres (id, ganre) VALUES(24, 'hruk');
INSERT INTO genres (id, ganre) VALUES(25, 'rap');
INSERT INTO genres (id, ganre) VALUES(26, 'rock');

INSERT INTO tracks (id, "name", id_album, duration) VALUES(3, 'ничего нет', 15, '01:25:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(4, 'Трек2', 21, '00:25:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(5, 'Трек3', 18, '00:20:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(6, 'Трек4', 20, '00:22:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(7, 'Трек5', 19, '00:02:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(8, 'Трек6 мой', 19, '00:01:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(9, 'Трек10', 16, '00:09:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(10, 'трек11 my', 15, '01:02:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(11, 'Трек12', 16, '00:24:00');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(12, 'Трек13', 18, '00:06:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(13, 'Трек14', 20, '00:02:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(14, 'Трек15', 23, '00:24:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(15, 'Трек16', 19, '00:01:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(16, 'Трек17', 16, '00:09:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(17, 'трек12 my', 22, '01:02:20');
INSERT INTO tracks (id, "name", id_album, duration) VALUES(18, 'трек13 my', 24, '01:02:20');

INSERT INTO tracs_collections (id_trak, id_collection) VALUES(3, 1);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(3, 2);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(5, 5);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(10, 8);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(16, 1);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(10, 2);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(13, 3);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(4, 8);
INSERT INTO tracs_collections (id_trak, id_collection) VALUES(7, 7);






