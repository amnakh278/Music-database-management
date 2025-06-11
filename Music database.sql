create database music;
use music;
select database();
create table consumer(user_id int primary key, user_name varchar(25));
insert into consumer values(010, 'OceanBreeze93'),
(011, 'PixelMaster'),
(012, 'MelodyHunter'),
(013, 'DragonChord'),
(014, 'Penguin34'),
(015, 'Sparks78'),
(016, 'SunsetVibes'),
(017, 'Cardi789'),
(018, 'king000'),
(019, 'Marsh234');
select * from consumer;
create table artist (artist_id int primary key, artist_name varchar(25));
insert into artist values (1000, 'Luna Solis'),
(1001, 'Skylar Muse'),
(1002, 'Kendrick Lamar'),
(1003, 'Drake'),
(1004, 'Travis Scott'),
(1005, 'Nova Sparks'),
(1006, 'Echo Vega'),
(1007, 'Cardi B'),
(1008, 'J. Cole'),
(1009, 'Marshmello');
select * from artist;
create table album (album_id int primary key  ,  album_name varchar(25));
insert into album values (100,  'ysd'),
(101,  'abc'),
(102,  'dfg'),
(103, 'hil'),
(104,'xyz'),
(105,'mv'),
(106, 'ert'),
(107,  'oiu'),
(108, 'jlk'),
(109,  'asd');
select * from album;
create table track (track_id int primary key, track_name varchar(25),track_time varchar(25));
insert into track values (10, 'see', '4 mins'),
(11, 'fade', '2 mins'),
(12, 'kill', '1 min'),
(13, 'Dust and Diamonds', '3 mins'),
(14, 'Under the Southern Sky', '4 mins'),
(15, 'Whiskey Sunset', '1 min'),
(16, 'Heartland Song', '3 min'),
(17, 'Prairie Winds', '2.5 mins'),
(18, 'Sapphire Swing', '4 mins'),
(19, 'Velvet Keys','1 min');
select * from track;
create table played (play_id int primary key, track_id int , user_id int, album_id int, artist_id int);
insert into played values(0, 10, 010, 100, 1000),
( 1 , 11, 011, 101, 1001),
(2 , 12 ,012, 102, 1002),
(3 ,  13 ,013, 103, 1003),
(4,  14, 014, 104, 1004),
(5,  15, 015, 105, 1005),
(6,  16, 016, 106, 1006),
(7,  17, 017, 107, 1007),
(8 ,  18, 018, 108, 1008),
(9 , 19, 019, 109, 1009);
select * from played;

START TRANSACTION;
INSERT INTO album VALUES (110, 'dsa');
UPDATE  album
SET album_name = 'cbb'
WHERE album_id = 110 ;
COMMIT;
rollback;
select * from album;


SELECT *
FROM track
ORDER BY track_id DESC;



START TRANSACTION;
DELETE FROM played
WHERE play_id between 10 and 12;
COMMIT;
select * from album;

SELECT artist_id, artist_name
FROM artist
WHERE artist_id IN (1004);


ALTER TABLE played
ADD CONSTRAINT fk_artist_id
FOREIGN KEY (artist_id)
REFERENCES artist(artist_id);

ALTER TABLE played
ADD CONSTRAINT fk_album_id
FOREIGN KEY (album_id)
REFERENCES album(album_id);

ALTER TABLE played
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id)
REFERENCES consumer(user_id);

ALTER TABLE played
ADD CONSTRAINT fk_track_id
FOREIGN KEY (track_id)
REFERENCES track(track_id);


select artist_name, track_name, album_name,play_id
from artist, played , track, album
where track.track_id=played.track_id 
and artist.artist_id=played.artist_id
and album.album_id=played.album_id
having  track_name like 'fade';


insert into played values(10, 11,012,101, 1001) ;
insert into played values(11, 11,013,101, 1001);
insert into played values(12, 11,017,101, 1001);
select * 
from played;

select user_name
from consumer, played
where consumer.user_id=played.user_id
and track_id=11; 

describe consumer;

describe artist;

describe album;

describe track;

describe played;

select artist_name, track_name, album_name, play_id
from artist, track, album, played
where track_name ='f___';