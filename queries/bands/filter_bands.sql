-- filter by id
SELECT * 
  FROM bands 
    -- this defines the filter 
    WHERE band_id=1;

-- filter by genre 
SELECT band_id, name AS "Artist"
  FROM bands 
    WHERE genre='metal';

-- filter by mulitple conditions 

-- OR
SELECT * 
  FROM bands
    WHERE band_id=1 OR band_id=3
    ORDER BY name;

-- AND 
SELECT * 
  FROM bands
    WHERE name='Prince' AND genre='progressive soul';
