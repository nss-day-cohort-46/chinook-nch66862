SELECT 
    SUM(i.Total) AS TotalSales
FROM Invoice i
WHERE InvoiceDate LIKE "2011%"