use [TestDB]
go 

SELECT PurchaseOrderID, OrderQty, T.ProductID, UnitPrice, LineTotal, ProductName, Colour
FROM [dbo].[Transactions] AS T
LEFT JOIN [dbo].[Products] AS P
ON T.ProductID = P.ProductID