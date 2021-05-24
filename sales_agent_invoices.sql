SELECT 
    i.InvoiceId,
    i.CustomerId,
    i.InvoiceDate,
    i.BillingAddress,
    i.BillingCity,
    i.BillingState,
    i.BillingCountry,
    i.BillingPostalCode,
    i.Total,
    e.FirstName || ' ' || e.LastName AS FullName
FROM Employee e
INNER JOIN Customer c ON
    e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i ON
    i.CustomerId = c.CustomerId
ORDER BY FullName