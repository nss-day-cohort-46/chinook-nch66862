SELECT 
    c.SupportRepId,
    e.FirstName || ' ' || e.LastName AS FullName
FROM Employee e
INNER JOIN Customer c ON
    e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId