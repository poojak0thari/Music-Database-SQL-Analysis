select invoice.BillingCountry as country, sum(invoiceline.InvoiceLineId) as buying,
       SUM(invoiceline.UnitPrice * invoiceline.Quantity) AS Total_sales
from music_playlist.invoice
join music_playlist.invoiceline
on invoice.InvoiceId= invoiceline.InvoiceId
group by country
order by buying desc;

