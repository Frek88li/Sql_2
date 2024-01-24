INSERT INTO executer(first_name, last_name, name_nickname)
VALUES ('Fenty', 'Robin', 'Rihanna'),
('Germanotta', 'Stephani', 'Lady gaga'),
('Jackson', 'Mishael', 'Michael Jackson'),
('Madonna', 'Ciccone', 'Madonna'),
('Sheeran', 'Edward', 'Ed Sheeran')
;

INSERT INTO Genres(title)
VALUES ('Hip-Hop'),
('Pop'),
('Rock'),
('Jazz')
;

INSERT INTO Genres_executor (executer_id, genres_id)
VALUES(1,1), (1,2), (2,2), (3,2), 
(3,3), (4,2), (4,3), (4,4), (5,2), (5,3)
;

INSERT INTO Album (list_album, year)
VALUES ('Anti', 2016),
('The Fame', 2008),
('True Blue', 1986),
('Dangerous', 1991),
('X', 2014),
('Partymobile', 2020)
;


INSERT INTO Executer_album (executer_id, album_id)
VALUES (1,1), (2,2), (3,4), (4,3), (5,5), (1,6)
;

INSERT INTO track (name_track, duration, album_id)
VALUES ('What My name', 265, 1),
('Umbrella', 255, 1),
('Bad Romance', 309, 2),
('Shallow', 217, 2),
('Hung Up', 334, 4),
('Beat it', 299, 3),
('Break of Dawn', 332, 5),
('Believe it', 184, 6)
;

INSERT INTO collection (collection_name, year_of_release)
VALUES ('Good Girl Gone Bad', 2007),
('The Fame Monster', 2009),
('CHV2', 2001), 
('Music & Me', 1973),
('Invincible', 2001),
('Shallow', 2020)
;

INSERT INTO collection_track (track_id, collection_id)
VALUES (1,5), (2,1), (3,2), (4,6), (5,3), (6,4), (7,5)
;

