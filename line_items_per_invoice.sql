SELECT 
    i.InvoiceId,
    COUNT(*) AS NumberOfLines
FROM Invoice i
INNER JOIN InvoiceLine il ON
    i.InvoiceId = il.InvoiceId
GROUP BY il.InvoiceId