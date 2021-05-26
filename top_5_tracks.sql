SELECT
    Count(il.TrackId) as TracksSold,
    t.Name as TrackName
FROM InvoiceLine as il
LEFT JOIN Track as t
    ON t.TrackId = il.TrackId
Group By il.TrackId
ORDER BY TracksSold DESC
LIMIT 5






With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    GROUP BY TrackId
)
SELECT tc.TotalSales TotalSales, t.Name
FROM TrackCounts tc
JOIN Track t ON tc.TrackId = t.TrackId
ORDER BY TotalSales DESC
LIMIT 5