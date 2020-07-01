use [TestDB]
go

select PurchaseOrderID, sum(LineTotal) as [FullTotal] from dbo.Transactions

group by PurchaseOrderID

-- the having clause simply would select the sum you group by 
--(you can't do a normal select because the data doesnt actually exist in the table)
-- you can't use aliases like the FullTotal Alias like above for having clauses

having sum(LineTotal) > 50000