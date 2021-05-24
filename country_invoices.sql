SELECT 
    i.BillingCountry,
    COUNT(*) as NumberOfInvoices
FROM Invoice i
GROUP BY i.BillingCountry