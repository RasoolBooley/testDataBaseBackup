use [TestDB]
go

-- the sum below adds the values contained within the rows that match ID's

select PurchaseOrderID, sum(LineTotal) as [Total of Line Total]
from dbo.Transactions 

--grouping by the the purchaseOrderID allows the line totals to be added up to each value with the same ID in this case 7

--group simply removes all duplicate entries in the list

where PurchaseOrderID = 7

group by PurchaseOrderID

-- The below statemtent will have the separate values before theyre added

select * from dbo.Transactions where PurchaseOrderID = 7