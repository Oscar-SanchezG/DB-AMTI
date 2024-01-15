DROP procedure IF EXISTS get_products_supplier;
DELIMITER $$
CREATE PROCEDURE get_products_supplier(IN id_product_fk VARCHAR(15))
BEGIN
	
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SET WITH_ERRORS = TRUE;
    END;
	START TRANSACTION;
    SELECT 
		   productSupplier.id_product_fk AS intidp,
		   productSupplier.id_supplier_fk AS intids,
           productSupplier.keySupplier AS strkeysupp,
           productSupplier.cost AS dlcost,
           supplier.name AS strname
	FROM productSupplier 
    JOIN supplier ON supplier.id_supplier = productSupplier.id_supplier_fk where productSupplier.id_product_fk=id_product_fk;
    
	IF WITH_ERRORS THEN 
		ROLLBACK;
	ELSE 
        COMMIT;
	END IF;
	
    
END$$

DELIMITER ;