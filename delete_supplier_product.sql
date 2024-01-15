DROP procedure IF EXISTS delete_supplier_product;
DELIMITER $$
CREATE PROCEDURE delete_supplier_product(IN id_product VARCHAR(15), IN id_supplier VARCHAR(15))
BEGIN
    DECLARE WITH_ERRORS BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
		SET WITH_ERRORS = TRUE;
    END;
	START TRANSACTION;
    DELETE
	FROM productSupplier
    WHERE productSupplier.id_product_fk=id_product AND productSupplier.id_supplier_fk=id_supplier;
    SELECT productSupplier.id_product_fk AS intidp,
		   productSupplier.id_supplier_fk AS intids,
           productSupplier.keySupplier AS strkeys,
           productSupplier.cost AS dlcost
	from productSupplier;
	IF WITH_ERRORS THEN 
		ROLLBACK;
	ELSE 
        COMMIT;
	END IF;
END$$

DELIMITER ;