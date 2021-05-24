SELECT 
    il.InvoiceLineId,
    il.InvoiceId,
    il.TrackId,
    il.UnitPrice,
    il.Quantity,
    t.Name
FROM InvoiceLine il
INNER JOIN Track t ON
    il.TrackId = t.TrackId