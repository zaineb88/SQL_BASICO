--LOS JUGADORES CUYO SALARIO SEPERIOS LOS 400000 AL A�O

SELECT JUGADOR_ID,
  NOMBRE,
  APPELLIDO,
  EQUIPO_FK,
  SALARIO,
  DORSAL,
  DEMARCACION
FROM JUGADOR
WHERE SALARIO>400000;

--CREAR VISTA QUE SE COMPONGA DE LOS REGISTROS CUYO JUGADORES CUMPLEAN ESA CONDICION

CREATE VIEW "FEMXA"."JUGADORES_VIEW_2"("JUGADOR_ID",
  "NOMBRE",
  "APPELLIDO",
  "EQUIPO_FK",
  "SALARIO",
  "DORSAL",
  "DEMARCACION"

) AS 
 SELECT *
FROM JUGADOR 
  WHERE
  SALARIO>400000
  WITH READ ONLY;
  
  --
  
  SELECT NOMBRE_IQ FROM EQUIPO WHERE FECHA_FUNDACION < '01/01/1927';
  
  --
  
  SELECT NOMBRE_IQ FROM  EQUIPO,JUGADOR WHERE EQUIPO.EQUIPO_ID=JUGADOR.EQUIPO_FK AND COUNT(JUGADOR.JUGADOR_ID)=15;
  
  SELECT EQUIPO_FK FROM JUGADOR where COUNT(*)=2;