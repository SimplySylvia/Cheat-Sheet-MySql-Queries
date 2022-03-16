SELECT *
  FROM bands;

-- how many to grab
SELECT * 
  FROM bands
    LIMIT 2;

-- how many to grab plus an offset
SELECT * 
  FROM bands
    LIMIT 2
    OFFSET 2;

-- select keyword allows you to decide which cols you want to return 

SELECT band_id,genre 
  from bands;

-- we can provide alias for the selected column 

SELECT genre AS style 
  FROM bands;

-- sql does not like a column to be called name 

SELECT name AS "Artist"
  FROM bands;

-- more than one AS 

SELECT name AS "Artist", genre AS style 
  FROM bands;

-- remove duplicate entries 
SELECT DISTINCT genre AS style 
  FROM bands;