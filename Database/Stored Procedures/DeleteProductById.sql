CREATE OR ALTER PROCEDURE DeleteProductById
  @id VARCHAR(100)
AS
BEGIN
UPDATE products SET isDeleted=1 WHERE id=@id
END
