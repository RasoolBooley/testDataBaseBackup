use TestDB
go

-- to create a proc use the first line below, then add in any script that you want the proc to execute

create proc MyFirstProc as
select * from dbo.Transactions 
where ProductID = 7
order by ProductID desc

-- once the proc is created you can execute the proc by typing "exec" and then the proc name.
-- like this
-- exec MyFirstProc