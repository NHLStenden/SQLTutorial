CREATE DATABASE IF NOT EXISTS Nobel;
USE Nobel;

DROP TABLE IF EXISTS nobel_win;

CREATE TABLE nobel_win (
  year int NOT NULL,
  subject VARCHAR(100) NOT NULL,
  winner VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  category VARCHAR(100) NOT NULL
);

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Physics', 'Louis Neel', 'France', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1987, 'Economics', 'Robert Solow', 'USA', 'Economist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

INSERT INTO Nobel.nobel_win (year, subject, winner, country, category)
VALUES (1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist');

