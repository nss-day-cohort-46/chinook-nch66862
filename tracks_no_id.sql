SELECT 
    t.Name as Track,
    a.Title as AlbumTitle,
    mt.Name as MediaType,
    g.Name as Genre
FROM Track t
INNER JOIN Album a ON
    a.AlbumId = t.AlbumId
INNER JOIN MediaType mt ON
    mt.MediaTypeId = t.MediaTypeId
INNER JOIN Genre g ON
    g.GenreId = t.GenreId