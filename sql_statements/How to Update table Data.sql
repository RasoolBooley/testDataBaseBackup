
-- first we are selecting the data we want to change to confirm we are changing the right stuff
  select * from Products where ProductName like '%blue%'

  -- we then choose which table we want to update
  update Products 

  -- we say which columns we want to update with what value
  set ProductID = 400

  -- we say which instances on that column we will update (if we dont specify this every entry on the column will have the set value)
  where ProductName like '%external%'

  -- inserting data works in a similar way

  -- we use the insert into statement and declare the table
insert into Products (
-- we define the columns we want to add data too (if we dont the column will be null)
ProductID, 
ProductName, 
Colour)

-- finally we declare the values for the entry in the same order we defined the column names
values(1, 'Bottles', 'Clear')

select * from Products where Colour = 'Clear'

-- the update works the same as the delete except we dont need to set a new value
delete Products where Colour = 'Clear'

