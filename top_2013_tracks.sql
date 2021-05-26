Select max(TracksSold) as TopSelling, TrackName
FROM (SELECT
    strftime("%Y", i.InvoiceDate) AS InvoiceYear,
    Count(il.TrackId) as TracksSold,
    t.Name as TrackName
FROM Invoice i
LEFT JOIN InvoiceLine as il
    ON il.InvoiceId = i.InvoiceId
LEFT JOIN Track as t
    ON t.TrackId = il.TrackId
WHERE InvoiceYear = "2013"
Group By il.TrackId)





With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    JOIN Invoice i ON i.InvoiceId = InvoiceLine.InvoiceId
    WHERE i.InvoiceDate like "%2013%"
    GROUP BY TrackId
)
SELECT MAX(tc.TotalSales) TotalSales, t.Name
FROM TrackCounts tc
JOIN Track t ON tc.TrackId = t.TrackId