USE Ecommerce
GO
--####################################################
--CREATE STORED PROCEDURE FOR INSERTING USER TO TABLE
--####################################################
CREATE OR ALTER PROCEDURE addProduct(
    @productId VARCHAR(255),  -- GENERATED BY THE SERVER
    @productName VARCHAR(100),
    @productImage VARCHAR(100),
    @productDescription VARCHAR(100),
    @price INT
)
AS
BEGIN
    INSERT INTO Products
        (
        productId,         -- GENERATED BY THE SERVER
        productName,
        productImage,
        productDescription,
        price
        )
    VALUES(
        @productId,       -- GENERATED BY THE SERVER
        @productName,
        @productImage,
        @productDescription,
        @price
    )
END
--########################
--EXECUTE STORED PROCEDURE
--########################
EXEC addProduct '12378', 'SVS PB16 Mini', '/product/img', 'Mini ported subwoofer', '1000'
EXEC addProduct '12222', 'SVS SB16 Ultra', '/product/img', 'Sealed subwoofer', '2400'

--#####################################
--########## VIEW UPDATED TABLE########
--#####################################
SELECT * FROM Products
