DROP procedure IF EXISTS delete_products_by_id;
DELIMITER $$
CREATE PROCEDURE delete_products_by_id(IN id_product VARCHAR(15))
BEGIN
	
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SET WITH_ERRORS = TRUE;
    END;
	START TRANSACTION;
    DELETE
    FROM productSupplier
    WHERE productSupplier.id_product_fk =id_product;
    DELETE
	FROM product
    WHERE product.id_product= id_product;
    SELECT product.id_product AS intid,
			product.id_type_fk AS inttype,
            product.key_product AS strkey,
            product.price AS intprice,
            product.name AS strname,
            product.available AS stravailable,
            product.description AS strdescription
	FROM product;
	IF WITH_ERRORS THEN 
		ROLLBACK;
	ELSE 
        COMMIT;
	END IF;
	
    
END$$

DELIMITER ;