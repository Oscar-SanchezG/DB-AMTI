DROP procedure IF EXISTS put_supplier_by_key;
DELIMITER $$
CREATE PROCEDURE put_supplier_by_key(IN idproductfk int,
									IN idsupplierfk int,
                                    IN costs  DECIMAL(5,2),
                                    IN keySuppliers VARCHAR(15))
BEGIN
	
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		
    END;
	START TRANSACTION;
    INSERT INTO productSupplier (id_product_fk, id_supplier_fk, cost, keySupplier)VALUES
    (idproductfk, idsupplierfk, costs, keySuppliers);
    SELECT 
		   productSupplier.id_product_fk AS intidp,
		   productSupplier.id_supplier_fk AS intids,
           productSupplier.keySupplier AS strkeys,
           productSupplier.cost AS dlcost
	FROM productSupplier ;
	
	
	
    
END$$

DELIMITER ;