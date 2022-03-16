SELECT name 
  FROM bands
  WHERE genre='rock'; 

-- with alias 
SELECT b.name 
  FROM bands b
  WHERE b.genre='rock';

-- example with a join 
SELECT 
  s.title,
  b.name, 
  b.genre
  FROM songs s
  INNER JOIN bands b
  ON (s.band_id = b.band_id);