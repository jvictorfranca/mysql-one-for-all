DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;



DROP TABLE IF EXISTS user_profile;
CREATE TABLE user_profile(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(50) NOT NULL,
age INT NOT NULL
);

INSERT INTO user_profile(user_name, age) 
VALUES ('Thati',23),
('Cintia',35),
('Bill',20),
('Roger',45);


DROP TABLE IF EXISTS user_plans;
CREATE TABLE user_plans(
user_id INT NOT NULL,
`account` VARCHAR(50) NOT NULL,
account_price DOUBLE NOT NULL,
CONSTRAINT PRIMARY KEY(user_id),
FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
);

INSERT INTO user_plans( user_id,`account`, account_price) 
VALUES (1,'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99),
(4, 'gratuito',0);


DROP TABLE IF EXISTS artists;
CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(50) NOT NULL
);

INSERT INTO artists(
artist_name)
VALUES ('Walter Phoenix'),('Peter Strong'), ('Lance Day'), ('Freedie Shannon');


DROP TABLE IF EXISTS albuns;
CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists (artist_id) 
);

INSERT INTO albuns (album_name, artist_id)
VALUES('Envious', 1),('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent',3), ('Temporary Culture',4);



DROP TABLE IF EXISTS songs;
CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists (artist_id), 
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

INSERT INTO songs (song_name, artist_id, album_id)
VALUES("Soul For Us",1 , 1),("Reflections Of Magic",1 , 1), ("Dance With Her Own",1 , 1),
("Troubles Of My Inner Fire",1,2), ( "Time Fireworks",1,2),
("Magic Circus",2 ,3 ), ("Honey, So Do I",2 ,3),("Sweetie, Let's Go Wild",2 ,3),("She Knows",2 ,3),
("Fantasy For Me", 3, 4), ("Celebration Of More", 3, 4), ("Rock His Everything", 3, 4), ("Home Forever", 3, 4), ("Diamond Power", 3, 4), ("Honey, Let's Be Silly", 3, 4),
("Thang Of Thunder",4 , 5), ("Words Of Her Life",4 , 5), ("Without My Streets",4 , 5);

DROP TABLE IF EXISTS user_sogs_history;
CREATE TABLE user_songs_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(song_id, user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id),
FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
);

INSERT INTO user_songs_history(user_id, song_id)
VALUES (1,1), (1,6), (1,14), (1,16),
(2,13), (2,17), (2,2), (2,15),
(3,4), (3,16), (3,6),
(4,3), (4,18), (4,11);


DROP TABLE IF EXISTS user_following;
CREATE TABLE user_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(artist_id, user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
FOREIGN KEY (user_id) REFERENCES user_profile(user_id)
);

INSERT INTO user_following(user_id, artist_id)
VALUES (1,1),(1,4),(1,3),
(2,1), (2,3),
(3,2),(3,1),
(4,4);
