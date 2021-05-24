SELECT
    Sum(i.Total) as TotalSales,
    e.FirstName || ' ' || e.LastName as EmployeeName
FROM Employee e
Left Join Customer c
    ON e.EmployeeId = c.SupportRepId
Left Join Invoice i
    ON i.CustomerId = c.CustomerId
Group By e.EmployeeId
Order By TotalSales DESC