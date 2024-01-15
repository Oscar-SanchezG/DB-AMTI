DROP procedure IF EXISTS take_list_product;
DELIMITER $$
CREATE PROCEDURE take_list_product()
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
    JOIN product ON product.id_product = productSupplier.id_product_fk;
        COMMIT;
	END IF;
	
    
END$$

DELIMITER ;