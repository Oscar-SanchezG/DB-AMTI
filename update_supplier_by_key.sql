DROP procedure IF EXISTS update_supplier_by_key;
DELIMITER $$
CREATE PROCEDURE update_supplier_by_key(IN idproductfk VARCHAR(15),
									IN idsupplierfk VARCHAR(15),
                                    IN costs  VARCHAR(15),
                                    IN keySuppliers VARCHAR(15),
                                    IN idsupplierfkN VARCHAR(15))
BEGIN
	
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		
    END;
	START TRANSACTION;
    UPDATE productSupplier 
    SET productSupplier.id_supplier_fk = idsupplierfkN,
        productSupplier.cost=costs,
        productSupplier.keySupplier = keySuppliers
	WHERE productSupplier.id_product_fk = idproductfk AND productSupplier.id_supplier_fk = idsupplierfk;
    SELECT 
		   productSupplier.id_product_fk AS intidp,
		   productSupplier.id_supplier_fk AS intids,
           productSupplier.keySupplier AS strkeys,
           productSupplier.cost AS dlcost,
           productSupplier.id_supplier_fk AS intidsn
	FROM productSupplier ;
	
	
	
    
END$$

DELIMITER ;