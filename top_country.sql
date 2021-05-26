Select max(TotalSales) as TopSpent, Country
FROM (SELECT
    Sum(i.Total) as TotalSales,
    BillingCountry as Country
FROM Invoice i
Group By i.BillingCountry
ORDER BY TotalSales DESC)





WITH TotalSales AS (
    SELECT SUM(Total) Total,
        BillingCountry Country
    FROM Invoice
    GROUP BY BillingCountry
)
SELECT '$' || MAX(Total) "Grand Total",
    Country
FROM TotalSales