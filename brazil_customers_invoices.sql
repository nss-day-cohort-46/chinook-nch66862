SELECT InvoiceId, InvoiceDate, BillingCountry, FirstName || ' ' || LastName AS FullName
FROM Invoice
LEFT JOIN Customer ON
    Invoice.CustomerId = Customer.CustomerId
WHERE Country = "Brazil";