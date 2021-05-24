select 
    i.InvoiceId,
    i.CustomerId,
    i.InvoiceDate,
    i.BillingAddress,
    i.BillingCity,
    i.BillingState,
    i.BillingCountry,
    i.BillingPostalCode,
    i.Total,
    Count(il.InvoiceId) as InvoiceLineItems
from Invoice i
left join InvoiceLine il
    on i.InvoiceId = il.InvoiceId
group by i.invoiceid