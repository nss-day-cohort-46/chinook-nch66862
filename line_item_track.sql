SELECT 
    il.InvoiceLineId,
    il.InvoiceId,
    il.TrackId,
    il.UnitPrice,
    il.Quantity,
    t.Name,
    ar.Name as ArtistName
FROM InvoiceLine il
INNER JOIN Track t ON
    il.TrackId = t.TrackId
INNER JOIN Album a ON
    a.AlbumId = t.AlbumId
INNER JOIN Artist ar ON
    ar.ArtistId = a.ArtistId