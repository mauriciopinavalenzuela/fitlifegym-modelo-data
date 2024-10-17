-- Elimina los registros de las tablas 

TRUNCATE TABLE MIEMBROS_CLASES;
TRUNCATE TABLE CLASES_ENTRENADORES;
TRUNCATE TABLE RESERVAS;
TRUNCATE TABLE EQUIPOS;
TRUNCATE TABLE CLASES;
TRUNCATE TABLE SUCURSALES;
TRUNCATE TABLE ENTRENADORES;
TRUNCATE TABLE MIEMBROS;
TRUNCATE TABLE MEMBRESIAS;

-- data tabla MEMBRESIAS

INSERT INTO MEMBRESIAS (ID_MEM, NOM_PLA, PRE_MEM, BEN_MEM) VALUES
(1, 'Plan Básico', 10000, 'Acceso libre a todas las máquinas'),
(2, 'Plan Avanzado', 20000, 'Acceso a todas las máquinas y clases grupales'),
(3, 'Plan Premium', 30000, 'Acceso ilimitado y entrenador personal'),
(4, 'Plan Familiar', 15000, 'Acceso para dos miembros de la familia'),
(5, 'Plan Estudiante', 8000, 'Descuento para estudiantes'),
(6, 'Plan Corporativo', 25000, 'Acceso para empresas'),
(7, 'Plan Senior', 12000, 'Descuento para mayores de 60 años'),
(8, 'Plan Joven', 9000, 'Acceso para menores de 18 años'),
(9, 'Plan Saludable', 18000, 'Incluye clases de nutrición'),
(10, 'Plan VIP', 40000, 'Acceso total y clases personalizadas');

-- data tabla MIEMBROS

INSERT INTO MIEMBROS (ID_MIE, RUT, NOM_MIE, APE_MIE, FEC_NAC, COR_ELE, TEL_MIE, FEC_INS, ID_MEM) VALUES
(1, '12345678-9', 'Juan', 'Pérez', TO_DATE('1985-01-15', 'YYYY-MM-DD'), 'juan.perez@mail.com', '912345678', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 1),
(2, '98765432-1', 'Ana', 'González', TO_DATE('1990-03-22', 'YYYY-MM-DD'), 'ana.gonzalez@mail.com', '922345678', TO_DATE('2023-02-10', 'YYYY-MM-DD'), 2),
(3, '11223344-5', 'Carlos', 'Rodríguez', TO_DATE('1987-07-30', 'YYYY-MM-DD'), 'carlos.rodriguez@mail.com', '933345678', TO_DATE('2023-03-15', 'YYYY-MM-DD'), 3),
(4, '22334455-6', 'María', 'López', TO_DATE('1995-06-11', 'YYYY-MM-DD'), 'maria.lopez@mail.com', '944345678', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 4),
(5, '33445566-7', 'José', 'Soto', TO_DATE('1992-11-19', 'YYYY-MM-DD'), 'jose.soto@mail.com', '955345678', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 5),
(6, '44556677-8', 'Beatriz', 'Méndez', TO_DATE('1993-08-25', 'YYYY-MM-DD'), 'beatriz.mendez@mail.com', '966345678', TO_DATE('2023-06-30', 'YYYY-MM-DD'), 6),
(7, '55667788-9', 'Luis', 'Rivas', TO_DATE('1988-02-14', 'YYYY-MM-DD'), 'luis.rivas@mail.com', '977345678', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 7),
(8, '66778899-0', 'Carla', 'Figueroa', TO_DATE('1996-04-27', 'YYYY-MM-DD'), 'carla.figueroa@mail.com', '988345678', TO_DATE('2023-08-15', 'YYYY-MM-DD'), 8),
(9, '77889900-1', 'Miguel', 'Díaz', TO_DATE('1991-12-03', 'YYYY-MM-DD'), 'miguel.diaz@mail.com', '999345678', TO_DATE('2023-09-20', 'YYYY-MM-DD'), 9),
(10, '88990011-2', 'Sofía', 'Martínez', TO_DATE('1994-10-09', 'YYYY-MM-DD'), 'sofia.martinez@mail.com', '910345678', TO_DATE('2023-10-01', 'YYYY-MM-DD'), 10);

-- data tabla ENTRENADORES

INSERT INTO ENTRENADORES (ID_ENT, NOM_ENT, APE_ENT, ESP_ENT, CER_ENT) VALUES
(1, 'Pedro', 'Morales', 'Fitness', 'Certificado en entrenamiento funcional'),
(2, 'Lucía', 'Araya', 'Yoga', 'Certificada en Yoga Avanzado'),
(3, 'Ricardo', 'Poblete', 'Crossfit', 'Certificado en Crossfit nivel 2'),
(4, 'Isabel', 'Carrasco', 'Pilates', 'Certificada en Pilates Reformer'),
(5, 'Andrés', 'Lagos', 'Ciclismo', 'Certificado en Spinning'),
(6, 'Paula', 'Vidal', 'Natación', 'Certificada en Natación Profesional'),
(7, 'Diego', 'Sáez', 'Artes Marciales', 'Cinturón negro en Taekwondo'),
(8, 'Claudia', 'Vergara', 'Danza', 'Certificada en Zumba y Baile Entretenido'),
(9, 'Javier', 'Maldonado', 'Entrenamiento de Fuerza', 'Certificado en Powerlifting'),
(10, 'Valentina', 'Campos', 'Boxeo', 'Certificada en Boxeo Profesional');

-- data tabla SUCURSALES

INSERT INTO SUCURSALES (ID_SUC, DIR_SUC, CIU_SUC, TEL_SUC, HOR_APE, HOR_CIE) VALUES
(1, 'Av. Providencia 123', 'Santiago', '223456789', TO_DATE('07:00:00', 'HH24:MI:SS'), TO_DATE('22:00:00', 'HH24:MI:SS')),
(2, 'Calle Los Leones 456', 'Santiago', '233456789', TO_DATE('08:00:00', 'HH24:MI:SS'), TO_DATE('21:00:00', 'HH24:MI:SS')),
(3, 'Av. Apoquindo 789', 'Las Condes', '243456789', TO_DATE('06:30:00', 'HH24:MI:SS'), TO_DATE('23:00:00', 'HH24:MI:SS')),
(4, 'Calle Prat 123', 'Valparaíso', '253456789', TO_DATE('07:00:00', 'HH24:MI:SS'), TO_DATE('22:00:00', 'HH24:MI:SS')),
(5, 'Av. Colón 456', 'Viña del Mar', '263456789', TO_DATE('08:00:00', 'HH24:MI:SS'), TO_DATE('21:00:00', 'HH24:MI:SS')),
(6, 'Calle Rancagua 789', 'Rancagua', '273456789', TO_DATE('06:30:00', 'HH24:MI:SS'), TO_DATE('23:00:00', 'HH24:MI:SS')),
(7, 'Av. O´Higgins 123', 'Concepción', '283456789', TO_DATE('07:00:00', 'HH24:MI:SS'), TO_DATE('22:00:00', 'HH24:MI:SS')),
(8, 'Calle Bulnes 456', 'Temuco', '293456789', TO_DATE('08:00:00', 'HH24:MI:SS'), TO_DATE('21:00:00', 'HH24:MI:SS')),
(9, 'Av. La Paz 789', 'Antofagasta', '203456789', TO_DATE('06:30:00', 'HH24:MI:SS'), TO_DATE('23:00:00', 'HH24:MI:SS')),
(10, 'Calle Independencia 123', 'Iquique', '213456789', TO_DATE('07:00:00', 'HH24:MI:SS'), TO_DATE('22:00:00', 'HH24:MI:SS'));

-- data tabla CLASES

INSERT INTO CLASES (ID_CLA, NOM_CLA, NIV_DIF, CAP_MAX, ID_SUC) VALUES
(1, 'Yoga', 'Intermedio', 20, 1),
(2, 'Pilates', 'Avanzado', 15, 2),
(3, 'Crossfit', 'Principiante', 25, 3),
(4, 'Spinning', 'Intermedio', 30, 4),
(5, 'Zumba', 'Principiante', 50, 5),
(6, 'Boxeo', 'Avanzado', 10, 6),
(7, 'Danza', 'Intermedio', 35, 7),
(8, 'Natación', 'Principiante', 20, 8),
(9, 'Artes Marciales', 'Avanzado', 15, 9),
(10, 'Entrenamiento Funcional', 'Intermedio', 20, 10);

-- data tabla EQUIPOS

INSERT INTO EQUIPOS (ID_EQU, TIP_EQU, MAR_EQU) VALUES
(1, 'Cinta de correr', 'Technogym'),
(2, 'Bicicleta estática', 'Schwinn'),
(3, 'Pesas', 'Rogue Fitness'),
(4, 'Máquina de remo', 'Concept2'),
(5, 'Elíptica', 'Precor'),
(6, 'Banco de pesas', 'Body-Solid'),
(7, 'Escaladora', 'StairMaster'),
(8, 'Pesa rusa', 'Kettlebell Kings'),
(9, 'TRX', 'TRX Training'),
(10, 'Máquina de prensa', 'Cybex');

-- data tabla RESERVAS (después de insertar MIEMBROS, EQUIPOS, y SUCURSALES)

INSERT INTO RESERVAS (ID_RES, ID_MIE, ID_EQU, ID_SUC, FEC_RES, HOR_RES) VALUES
(1, 1, 1, 1, TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('09:00:00', 'HH24:MI:SS')),
(2, 2, 2, 2, TO_DATE('2024-10-16', 'YYYY-MM-DD'), TO_DATE('10:00:00', 'HH24:MI:SS')),
(3, 3, 3, 3, TO_DATE('2024-10-17', 'YYYY-MM-DD'), TO_DATE('11:00:00', 'HH24:MI:SS')),
(4, 4, 4, 4, TO_DATE('2024-10-18', 'YYYY-MM-DD'), TO_DATE('12:00:00', 'HH24:MI:SS')),
(5, 5, 5, 5, TO_DATE('2024-10-19', 'YYYY-MM-DD'), TO_DATE('13:00:00', 'HH24:MI:SS')),
(6, 6, 6, 6, TO_DATE('2024-10-20', 'YYYY-MM-DD'), TO_DATE('14:00:00', 'HH24:MI:SS')),
(7, 7, 7, 7, TO_DATE('2024-10-21', 'YYYY-MM-DD'), TO_DATE('15:00:00', 'HH24:MI:SS')),
(8, 8, 8, 8, TO_DATE('2024-10-22', 'YYYY-MM-DD'), TO_DATE('16:00:00', 'HH24:MI:SS')),
(9, 9, 9, 9, TO_DATE('2024-10-23', 'YYYY-MM-DD'), TO_DATE('17:00:00', 'HH24:MI:SS')),
(10, 10, 10, 10, TO_DATE('2024-10-24', 'YYYY-MM-DD'), TO_DATE('18:00:00', 'HH24:MI:SS'));

-- data tabla CLASES_ENTRENADORES

INSERT INTO CLASES_ENTRENADORES (ID_CLA, ID_ENT, FEC_CLA, HOR_CLA) VALUES
(1, 1, TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('09:00:00', 'HH24:MI:SS')),
(2, 2, TO_DATE('2024-10-16', 'YYYY-MM-DD'), TO_DATE('10:00:00', 'HH24:MI:SS')),
(3, 3, TO_DATE('2024-10-17', 'YYYY-MM-DD'), TO_DATE('11:00:00', 'HH24:MI:SS')),
(4, 4, TO_DATE('2024-10-18', 'YYYY-MM-DD'), TO_DATE('12:00:00', 'HH24:MI:SS')),
(5, 5, TO_DATE('2024-10-19', 'YYYY-MM-DD'), TO_DATE('13:00:00', 'HH24:MI:SS')),
(6, 6, TO_DATE('2024-10-20', 'YYYY-MM-DD'), TO_DATE('14:00:00', 'HH24:MI:SS')),
(7, 7, TO_DATE('2024-10-21', 'YYYY-MM-DD'), TO_DATE('15:00:00', 'HH24:MI:SS')),
(8, 8, TO_DATE('2024-10-22', 'YYYY-MM-DD'), TO_DATE('16:00:00', 'HH24:MI:SS')),
(9, 9, TO_DATE('2024-10-23', 'YYYY-MM-DD'), TO_DATE('17:00:00', 'HH24:MI:SS')),
(10, 10, TO_DATE('2024-10-24', 'YYYY-MM-DD'), TO_DATE('18:00:00', 'HH24:MI:SS'));

-- data tabla MIEMBROS_CLASES

INSERT INTO MIEMBROS_CLASES (ID_MIE, ID_CLA, FEC_INC) VALUES
(1, 1, TO_DATE('2024-10-15', 'YYYY-MM-DD')),
(2, 2, TO_DATE('2024-10-16', 'YYYY-MM-DD')),
(3, 3, TO_DATE('2024-10-17', 'YYYY-MM-DD')),
(4, 4, TO_DATE('2024-10-18', 'YYYY-MM-DD')),
(5, 5, TO_DATE('2024-10-19', 'YYYY-MM-DD')),
(6, 6, TO_DATE('2024-10-20', 'YYYY-MM-DD')),
(7, 7, TO_DATE('2024-10-21', 'YYYY-MM-DD')),
(8, 8, TO_DATE('2024-10-22', 'YYYY-MM-DD')),
(9, 9, TO_DATE('2024-10-23', 'YYYY-MM-DD')),
(10, 10, TO_DATE('2024-10-24', 'YYYY-MM-DD'));

