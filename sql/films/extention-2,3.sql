-- Extention 2

CREATE TABLE films_2(
 id serial primary key,
 title varchar(1000) unique,
 genre varchar(1000),
 released Integer(4),
 score Integer(2),
 FOREIGN KEY(directorID) REFERENCES directors(id)
)

CREATE TABLE directors(
    id serial primary key,
    name varchar(70)
)

INSERT INTO directors (name) VALUES
('Bob'),
('John'),
('Trauma');



insert into films_2(title, genre, released, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1);
insert into films_2(title, genre, released, score) VALUES ('The Godfather', 'Crime', 1972, 9, 1);
insert into films_2(title, genre, released, score) VALUES ('The Dark Knight', 'Action', 2008, 9, 1);
insert into films_2(title, genre, released, score) VALUES ('Alien', 'SciFi', 1979, 9, 1);
insert into films_2(title, genre, released, score) VALUES ('Total Recall', 'SciFi', 1990, 8, 1);
insert into films_2(title, genre, released, score) VALUES ('The Matrix', 'SciFi', 1999, 8, 2);
insert into films_2(title, genre, released, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5, 2);
insert into films_2(title, genre, released, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6, 2);
insert into films_2(title, genre, released, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7, 1);
insert into films_2(title, genre, released, score) VALUES ('Misery', 'Thriller', 1990, 7, 3);
insert into films_2(title, genre, released, score) VALUES ('The Power of the Dog', 'Western', 2021, 6, 1);
insert into films_2(title, genre, released, score) VALUES ('Hell or High Water', 'Western', 2016, 8, 1);
insert into films_2(title, genre, released, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9, 1);
insert into films_2(title, genre, released, score) VALUES ('Unforgiven', 'Western', 1992, 7, 2);


SELECT * FROM films_2 INNER JOIN directors ON films_2.directorID=directors.id;
SELECT directors.name, COUNT(films_2.title) from directors inner join films_2 on directors.id=films_dk.director_id GROUP BY directors.name;
