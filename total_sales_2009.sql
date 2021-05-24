SELECT 
    strftime("%Y", i.InvoiceDate) AS InvoiceYear,
    SUM(i.Total) AS TotalSales
FROM Invoice i
WHERE InvoiceYear = "2009" OR InvoiceYear = "2011"
GROUP BY InvoiceYear