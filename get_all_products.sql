DROP procedure IF EXISTS get_all_products;
DELIMITER $$
CREATE PROCEDURE get_all_products()
BEGIN
	
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SET WITH_ERRORS = TRUE;
    END;
	START TRANSACTION;
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