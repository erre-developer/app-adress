
/* CREACION DE VISTA VER DIRECCIONES*/
CREATE VIEW fetch_direcciones AS
SELECT 
id_direccion,
nombre_calle,
numero,
CASE
    WHEN depto IS NULL THEN "--"
    WHEN depto = "" THEN "--"
    ELSE depto
END AS depto,
nombre_comuna,
nombre_region FROM direccion
JOIN comuna ON direccion.id_comuna_fk = comuna.id_comuna
JOIN region ON comuna.id_region_fk = region.id_region;


/*PROCEDURE TRAE TODAS LAS DIRECCIONES QUE SE REQUIERAN BUSCAR */

DELIMITER //

CREATE PROCEDURE getAllSearch(IN strSearch VARCHAR(100))
BEGIN
  SELECT 
  direccion.id_direccion,
  direccion.nombre_calle,
  direccion.numero,
  CASE
      WHEN direccion.depto IS NULL THEN "--"
      WHEN direccion.depto = "" THEN "--"
      ELSE direccion.depto
  END AS depto,
  comuna.nombre_comuna,
  region.nombre_region FROM direccion
  JOIN comuna ON direccion.id_comuna_fk = comuna.id_comuna
  JOIN region ON comuna.id_region_fk = region.id_region
  WHERE direccion.nombre_calle LIKE CONCAT(strSearch,'%') ;

END//



/*PROCEDURE TRAE LA DIRECCION QUE SE REQUERE EDITAR */

DELIMITER //

CREATE PROCEDURE getAdressEdit(IN idAdress INT)
BEGIN
  SELECT 
  direccion.id_direccion,
  direccion.nombre_calle,
  direccion.numero,
  direccion.depto,
  comuna.id_comuna,
  region.id_region FROM direccion
  JOIN comuna ON direccion.id_comuna_fk = comuna.id_comuna
  JOIN region ON comuna.id_region_fk = region.id_region
  WHERE direccion.id_direccion = idAdress ;

END//
