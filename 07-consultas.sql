
-- a. Mostrar los datos de los entrenadores ordenados alfabéticamente por apellido y nombre:

SELECT ID_ENT AS "ID", 
       NOM_ENT AS "Nombre", 
       APE_ENT AS "Apellido", 
       ESP_ENT AS "Especialidad", 
       CER_ENT AS "Certificado"
FROM ENTRENADORES
ORDER BY APE_ENT ASC, NOM_ENT ASC;

-- b. Dado el ID de una sucursal, mostrar todas las clases que se dictan allí con su respectivo horario y el nombre del entrenador que dicta esa clase:

SELECT C.ID_CLA AS "ID Clase", 
       C.NOM_CLA AS "Nombre Clase", 
       C.NIV_DIF AS "Nivel de Dificultad", 
       C.CAP_MAX AS "Capacidad Máxima", 
       TO_CHAR(CE.FEC_CLA, 'DD/MM/YYYY') AS "Fecha Clase", 
       TO_CHAR(CE.HOR_CLA, 'HH24:MI') AS "Hora Clase",  
       E.NOM_ENT AS "Nombre Entrenador", 
       E.APE_ENT AS "Apellido Entrenador"
FROM CLASES C
JOIN CLASES_ENTRENADORES CE ON C.ID_CLA = CE.ID_CLA
JOIN ENTRENADORES E ON CE.ID_ENT = E.ID_ENT
WHERE C.ID_SUC = 5;  -- Reemplaza el ID de la sucursal

-- opción multiple id

SELECT C.ID_CLA AS "ID Clase",
       C.NOM_CLA AS "Nombre Clase",
       C.NIV_DIF AS "Nivel de Dificultad",
       C.CAP_MAX AS "Capacidad Máxima",
       TO_CHAR(CE.FEC_CLA, 'DD/MM/YYYY') AS "Fecha Clase",
       TO_CHAR(CE.HOR_CLA, 'HH24:MI') AS "Hora Clase",
       E.NOM_ENT AS "Nombre Entrenador",
       E.APE_ENT AS "Apellido Entrenador"
FROM CLASES C
JOIN CLASES_ENTRENADORES CE ON C.ID_CLA = CE.ID_CLA
JOIN ENTRENADORES E ON CE.ID_ENT = E.ID_ENT
WHERE C.ID_SUC IN (5, 2, 7); 

-- c. Mostrar cuántas reservas se han realizado para cada equipo:

SELECT E.ID_EQU AS "ID Equipo", 
       E.TIP_EQU AS "Tipo de Equipo", 
       E.MAR_EQU AS "Marca del Equipo", 
       COUNT(R.ID_RES) AS "Total Reservas"
FROM EQUIPOS E
LEFT JOIN RESERVAS R ON E.ID_EQU = R.ID_EQU
GROUP BY E.ID_EQU, E.TIP_EQU, E.MAR_EQU;

-- d. Dado el ID de un miembro, mostrar las reservas que ha realizado, indicando el equipo reservado y la sucursal:

SELECT R.ID_RES AS "ID Reserva", 
       E.TIP_EQU AS "Tipo de Equipo", 
       E.MAR_EQU AS "Marca del Equipo", 
       S.DIR_SUC AS "Dirección Sucursal", 
       S.CIU_SUC AS "Ciudad Sucursal"
FROM RESERVAS R
JOIN EQUIPOS E ON R.ID_EQU = E.ID_EQU
JOIN SUCURSALES S ON R.ID_SUC = S.ID_SUC
WHERE R.ID_MIE = 7;  -- Reemplaza el ID del miembro

-- opción multiple id 

SELECT R.ID_RES AS "ID Reserva", 
       E.TIP_EQU AS "Tipo de Equipo", 
       E.MAR_EQU AS "Marca del Equipo", 
       S.DIR_SUC AS "Dirección Sucursal", 
       S.CIU_SUC AS "Ciudad Sucursal"
FROM RESERVAS R
JOIN EQUIPOS E ON R.ID_EQU = E.ID_EQU
JOIN SUCURSALES S ON R.ID_SUC = S.ID_SUC
WHERE R.ID_MIE IN (7, 8, 9); 

-- e. Mostrar los datos de los miembros ordenados por membresía, indicando por cada miembro, en cuántas clases está inscrito y cuántas reservas ha realizado:

SELECT M.ID_MIE AS "ID Miembro", 
       M.RUT AS "RUT", 
       M.NOM_MIE AS "Nombre", 
       M.APE_MIE AS "Apellido", 
       MB.NOM_PLA AS "Nombre de la Membresía", 
       (SELECT COUNT(*) 
        FROM MIEMBROS_CLASES MC 
        WHERE MC.ID_MIE = M.ID_MIE) AS "Total Clases", 
       (SELECT COUNT(*) 
        FROM RESERVAS R 
        WHERE R.ID_MIE = M.ID_MIE) AS "Total Reservas"
FROM MIEMBROS M
JOIN MEMBRESIAS MB ON M.ID_MEM = MB.ID_MEM
ORDER BY MB.NOM_PLA ASC;

