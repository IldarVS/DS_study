alter table table_name 
add count_column int
GO
update table_name set count_column = (select count(*) from table_name);  
