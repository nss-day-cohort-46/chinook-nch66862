SELECT
    Count(mt.MediaTypeId) as TypeSold,
    mt.Name as Type
FROM InvoiceLine as il
LEFT JOIN Track as t
    ON t.TrackId = il.TrackId
LEFT JOIN MediaType as mt
    ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.MediaTypeId
ORDER BY TypeSold DESC