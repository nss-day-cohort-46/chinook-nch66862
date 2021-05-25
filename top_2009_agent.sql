Select max(TotalSales)
from (SELECT
    Sum(i.Total) as TotalSales,
    strftime("%Y", i.InvoiceDate) AS InvoiceYear,
    e.FirstName || ' ' || e.LastName as EmployeeName
FROM Employee e
Left Join Customer c
    ON e.EmployeeId = c.SupportRepId
Left Join Invoice i
    ON i.CustomerId = c.CustomerId
Where InvoiceYear = "2009"
Group By e.EmployeeId)