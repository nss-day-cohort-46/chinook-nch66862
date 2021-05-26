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





With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales,
        TrackId
    FROM InvoiceLine
    GROUP BY TrackId
),
MediaTypeSales AS (
    SELECT SUM(tc.TotalSales) TotalSales,
        mt.Name Name
    FROM TrackCounts tc
        JOIN Track t on t.TrackId = tc.TrackId
        JOIN MediaType mt ON mt.MediaTypeid = t.MediaTypeId
    GROUP BY mt.Name
)
SELECT MAX(TotalSales) TotalSales, Name
FROM MediaTypeSales