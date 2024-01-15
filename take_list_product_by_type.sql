DROP procedure IF EXISTS take_list_product_by_type;
DELIMITER $$
CREATE PROCEDURE take_list_product_by_type(IN id_type_fk int)
BEGIN
	DECLARE id_type INT;
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
    JOIN product ON product.id_product = productSupplier.id_product_fk AND product.id_type_fk=id_type_fk;
        COMMIT;
	END IF;
	
    
END$$

DELIMITER ;