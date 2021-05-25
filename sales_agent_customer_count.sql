SELECT 
    e.FirstName || ' ' || e.LastName AS FullName,
    Count(c.SupportRepId) as CustomerCount
FROM Employee e
LEFT JOIN Customer c ON
    e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
ORDER BY FullName