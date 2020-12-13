BEGIN TRY  
     ALTER TABLE computer.dbo.Laptop DROP COLUMN count_column;
END TRY  
BEGIN CATCH
--кода нет
END CATCH;  
ALTER TABLE computer.dbo.Laptop ADD count_column INT;
UPDATE computer.dbo.Laptop SET count_column = (SELECT COUNT(*) FROM computer.dbo.Laptop);
