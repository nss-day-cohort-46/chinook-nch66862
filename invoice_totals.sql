SELECT 
    i.BillingCountry,
    i.Total,
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    c.FirstName || ' ' || c.LastName AS CustomerName
FROM Employee e
INNER JOIN Customer c ON
    e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i ON
    i.CustomerId = c.CustomerId