-- This file will create and use the database. 
-- Following that it will create the tables with a relationship.
-- This database will have two resources bands and songs. Their relationship is a one to many.

CREATE DATABASE music;

USE music;

CREATE TABLE
  bands(
    band_id int NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (band_id)
  );

CREATE TABLE
  songs(
    song_id int NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    band_id int NOT NULL,
    PRIMARY KEY (song_id),
    FOREIGN KEY (band_id) REFERENCES bands(band_id)
  );

SHOW TABLES; 

DESCRIBE bands;
DESCRIBE songs;