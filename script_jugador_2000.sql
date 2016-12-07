--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View JUGADORES_VIEW_1
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."JUGADORES_VIEW_1" ("NOMBRE", "APPELLIDO", "NOMBRE_IQ", "SALARIO") AS 
  SELECT
  J.NOMBRE,
  J.APPELLIDO,
  J.SALARIO,
  E.NOMBRE_IQ
  FROM
  JUGADOR J,EQUIPO E
  WHERE
  E.EQUIPO_ID=J.EQUIPO_FK AND
  J.SALARIO>2000
  WITH READ ONLY;
