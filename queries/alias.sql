SELECT name 
  FROM bands
  WHERE genre='rock'; 

-- with alias 
SELECT b.name 
  FROM bands b
  WHERE b.genre='rock';