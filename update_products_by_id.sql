DROP procedure IF EXISTS update_products_by_id;
DELIMITER $$
CREATE PROCEDURE update_products_by_id(IN id_product VARCHAR(15),
										IN id_type_fk VARCHAR(15),
                                        IN key_product VARCHAR(15),
                                        IN price VARCHAR(15),
                                        IN name VARCHAR(255),
                                        IN available TINYINT,
                                        IN description VARCHAR(50)
                                        )
BEGIN
	
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SET WITH_ERRORS = TRUE;
    END;
	START TRANSACTION;
    UPDATE product
    SET product.id_type_fk=id_type_fk, product.key_product=key_product,product.price=price,product.name=name ,product.available=available
    WHERE product.id_product=id_product;
    
    SELECT product.id_product AS intid,
			product.id_type_fk AS inttype,
            product.key_product AS strkey,
            product.price AS intprice,
            product.name AS strname,
            product.available AS stravailable,
            product.description AS strdescription
	FROM product
    WHERE product.id_product= id_product;
	IF WITH_ERRORS THEN 
		ROLLBACK;
	ELSE 
        COMMIT;
	END IF;
	
    
END$$

DELIMITER ;