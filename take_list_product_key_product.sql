DROP procedure IF EXISTS take_list_product_by_key_product;
DELIMITER $$
CREATE PROCEDURE take_list_product_by_key_product(IN key_product VARCHAR(15))
BEGIN
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    
    BEGIN
		
		SET WITH_ERRORS = TRUE;
    END;
	START TRANSACTION;
	IF WITH_ERRORS THEN 
		ROLLBACK;
	ELSE 
    SELECT 
    productSupplier.id_product_fk,
    productSupplier.id_supplier_fk,
    productSupplier.price,
    productSupplier.keySupplier as strkey,
    product.name
	FROM productSupplier
    JOIN product ON product.id_product = productSupplier.id_product_fk AND product.key_product=key_product;
        COMMIT;
	END IF;
	
    
END$$

DELIMITER ;