USE bejqqu8iuangvflxepsu;

CREATE TABLE  supplier (
    id_supplier INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT
)ENGINE = InnoDB;


CREATE TABLE productType (
    id_type INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT
)ENGINE = InnoDB;

CREATE TABLE product (
    id_product INT PRIMARY KEY AUTO_INCREMENT,
    id_type_fk INT NOT NULL,
    key_product VARCHAR(15) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    name VARCHAR(255) NOT NULL,
    available TINYINT NOT NULL,
    description TEXT,
    CONSTRAINT fk_product_type
    FOREIGN KEY (id_type_fk)
    REFERENCES  productType(id_type)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE productSupplier (
    id_product_fk INT NOT NULL,
    id_supplier_fk INT NOT NULL,
    cost DECIMAL(5,2) NOT NULL,
    keySupplier VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_product_fk, id_supplier_fk),
    CONSTRAINT fk_product
    FOREIGN KEY (id_product_fk) REFERENCES  product(id_product)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT fk_supplier
    FOREIGN KEY (id_supplier_fk) REFERENCES  supplier(id_supplier)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE  useri (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    useri VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
)ENGINE = InnoDB;


