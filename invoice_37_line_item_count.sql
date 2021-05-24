SELECT 
    COUNT(*)
FROM Invoice i
INNER JOIN InvoiceLine il ON
    i.InvoiceId = il.InvoiceId
WHERE il.InvoiceId = 37