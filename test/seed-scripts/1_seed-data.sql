if (select count(*) from [Example]) = 0
  insert into [Example] (Name) values 
    ('Example 1'),
    ('Example 2'),
    ('Example 3'),
    ('Example 4'),
    ('Example 5')
go
