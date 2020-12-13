BEGIN TRY  
     ALTER TABLE table_name DROP COLUMN count_column;
END TRY  
BEGIN CATCH
--кода нет
END CATCH;  
ALTER TABLE table_name ADD count_column INT;
UPDATE table_name SET count_column = (SELECT COUNT(*) FROM table_name);
