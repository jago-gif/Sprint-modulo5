CREATE DEFINER=`root`@`localhost` PROCEDURE `crearproveedor`(nombre_rep VARCHAR(50),
    nombre_cor VARCHAR(50),
    mail VARCHAR(50),
    id_cat INT,
    telefono VARCHAR(50),
    nombre VARCHAR(50),
    telefono2 VARCHAR(50),
    nombre2 VARCHAR(50))
BEGIN
 DECLARE idproveedor INT;
   -- DECLARE EXIT HANDLER FOR SQLEXCEPTION
     START TRANSACTION;
    
    -- Crear el proveedor
    INSERT INTO proveedores (nombre_representante, nombre_corporativo, correo, id_categoria) 
    VALUES (nombre_rep, nombre_cor, mail, id_cat);
    
    SET idproveedor = LAST_INSERT_ID(); -- Obtener el ID del proveedor
    -- Crear el primer contacto
    INSERT INTO contactos (id_proveedor, telefono, nombre_contacto)
    VALUES (idproveedor, telefono, nombre);
    
    IF telefono2 IS NULL OR nombre2 IS NULL THEN
    ROLLBACK;
        SELECT 'Es necesario un segundo contacto para crear un proveedor.';
        
    ELSE
        -- Crear el segundo contacto
        INSERT INTO contactos (id_proveedor, telefono, nombre_contacto)
        VALUES (idproveedor, telefono2, nombre2);
		SELECT 'Creacion exitosa.';
        COMMIT;
    END IF;
END