SELECT
    Count(il.TrackId) as TracksSold,
    t.Name as TrackName
FROM InvoiceLine as il
LEFT JOIN Track as t
    ON t.TrackId = il.TrackId
Group By il.TrackId
ORDER BY TracksSold DESC
LIMIT 5