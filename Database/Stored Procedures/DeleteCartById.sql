CREATE OR ALTER PROCEDURE DeleteCartById
  @id VARCHAR(100)
AS
BEGIN
UPDATE cart SET isDeleted=1 WHERE id=@id
END