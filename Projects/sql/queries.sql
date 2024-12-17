Q1:
SELECT g.Name as Genre,sum(i.total) as total_payments,count(i.total)  as total_invoices
FROM Invoice i
JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId=il.TrackId
JOIN Genre g on g. GenreId=t.GenreId
GROUP by g.Name 
ORDER by total_invoices DESC
LIMIT 10

Q2:
SELECT c.FirstName,
c.LastName,
c.Country,
sum(i.total) as total_payment
FROM Customer c
JOIN Invoice i on i.CustomerId=c.CustomerId
GROUP by Country
ORDER by total_payment DESC

Q3:
SELECT g.Name, STRFTIME('%Y', i.InvoiceDate) as year,count(i.invoiceID) as year_invoices
FROM Invoice i
JOIN InvoiceLine il on  il.InvoiceId=i.InvoiceId
JOIN Track t on t.TrackId=il.TrackId
JOIN Genre g on g.GenreId=t.GenreId
WHERE year ='2009'
GROUP by g.Name
ORDER by year_invoices DESC

Q4:
SELECT art.Name, sum(i.total) as total_sales
FROM Artist art
JOIN Album a on a.ArtistId=art.ArtistId
JOIN Track t on t.AlbumId=a.AlbumId
JOIN InvoiceLine il on il.TrackId=t.TrackId
JOIN Invoice i on i.InvoiceId=il.InvoiceId
GROUP by art.Name
ORDER by total_sales DESC
LIMIT 20