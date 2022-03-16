SELECT * 
  FROM songs 
  INNER JOIN bands 
  ON (songs.band_id = bands.band_id);


SELECT 
  songs.title,
  bands.name AS artist, 
  genre
  FROM songs 
  INNER JOIN bands
  ON (songs.band_id = bands.band_id);


-- join with filter and limit
SELECT 
  songs.title,
  bands.name AS artist, 
  genre
  FROM songs 
    INNER JOIN bands
      ON (songs.band_id = bands.band_id)
        WHERE 
          songs.band_id=2
          ORDER BY title DESC
          LIMIT 1;

-- artist first 

SELECT 
  bands.name AS artist,
  songs.title,
  genre
  FROM bands 
    INNER JOIN songs
      ON (songs.band_id = bands.band_id);


-- outer join left

SELECT *
  FROM songs 
    LEFT JOIN bands 
      ON (songs.band_id = bands.band_id);

-- outer join right
SELECT *
  FROM songs 
    RIGHT JOIN bands 
      ON (songs.band_id = bands.band_id);