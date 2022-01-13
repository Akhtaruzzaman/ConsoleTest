Create Proc ProductPriceExportData
As 
Begin
SELECT p.Code, p.Name, p.[Key], p.Measurement, p.Remark, pt.SSY, pt.DGY, pt.[TVN], pt.YTT, pt.[YBD] FROM   
(
select p.Id, s.Code, isnull(pp.Price,0) Price from Product p
join ProductPrice pp on p.Id = pp.ProductId
join Site s on pp.SiteId = s.Id
) t 
PIVOT(
    Sum(Price)
    FOR  Code IN (
        [SSY],
		[DGY],
		[TVN],
		[YTT],
		[YBD])
) AS pt join Product p on pt.Id = p.Id Order by p.Id
End