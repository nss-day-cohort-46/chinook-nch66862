SELECT
    Count(ar.ArtistId) as TracksSold,
    ar.Name as Artist
FROM InvoiceLine as il
LEFT JOIN Track as t
    ON t.TrackId = il.TrackId
LEFT JOIN Album as al
    ON al.AlbumId = t.AlbumId
LEFT JOIN Artist as ar
    ON ar.ArtistId = al.ArtistId
GROUP BY ar.ArtistId
ORDER BY TracksSold DESC
LIMIT 3