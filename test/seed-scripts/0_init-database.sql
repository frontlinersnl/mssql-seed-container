if not exists (select * from sys.tables where [name] = 'Example')
    create table Example(
        Name nvarchar(255) null
    )
go
