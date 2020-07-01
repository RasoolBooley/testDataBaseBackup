use [TestDB]
go

--finding specific values on tables

select * from DBO.Transactions WHERE PurchaseOrderID between 5 and 9;

-- finding specific strings use single quotes 

select * from dbo.Products WHERE Colour = 'Black'

-- use the like clause to find if an entry contains that value but isnt exactly that value

select * from dbo.Products where ProductName Like '%Black%'