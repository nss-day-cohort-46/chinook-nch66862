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