-- remove band by id
DELETE
  FROM bands
    WHERE band_id = 1;

-- display bands to show band was removed
SELECT * 
  FROM bands
    ORDER BY band_id;