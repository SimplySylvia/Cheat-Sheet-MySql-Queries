-- update by id
UPDATE bands 
  SET name = 'Artist formerly known as Prince', genre = 'soul'
  WHERE band_id = 4;

-- update by column 
UPDATE bands
  SET genre = 'METAL'
  WHERE genre = 'metal';