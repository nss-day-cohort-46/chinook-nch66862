SELECT
    Sum(i.Total) as TotalSales,
    BillingCountry as Country
FROM Invoice i
Group By i.BillingCountry
ORDER BY TotalSales DESC