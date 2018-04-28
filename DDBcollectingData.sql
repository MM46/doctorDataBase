USE doctorDatabase;

-- COLLECTING DATA

INSERT into prueba values (1, 'Test Ansiedad Hamilton');
INSERT into prueba values (2, 'Test Depresion Hamilton');


INSERT into doctor values (1, 'Carlos Alberto Becerra Laguna');
INSERT into doctor values (2,'JosuÈ EnrÌquez MarÌn');


INSERT into paciente values (1, 'Laura Gongora', '1998-08-31');
INSERT into paciente values (2, 'Christofer Garza','1993-08-16');


INSERT into recetaMedica values (1);
INSERT into recetaMedica values (2);
INSERT into recetaMedica values (3);
INSERT into recetaMedica values (4);


INSERT into InstanciaPrueba values (1, '2018-02-05', 10, 1);
INSERT into InstanciaPrueba values (2, '2018-04-08', 8, 1);
INSERT into InstanciaPrueba values (3, '2018-01-10', 15, 1);
INSERT into InstanciaPrueba values (4, '2018-03-14', 4, 1);


INSERT INTO medicamento VALUES (1,'Tressvin','Sertralina','ifa Celtics','Tabletas 50 mg');
INSERT INTO medicamento VALUES (2,'TIM ASF','Quetiapina','Asofarma','Tabletas 100 mg');
INSERT INTO medicamento VALUES (3,'Farmaxetina','Flouxetina','ifa Celtics','Tabletas 20 mg');


INSERT into Consulta values (1, '2018-02-01', 1 ,1 ,1, '08:00:00 am', 'Paciente facil de tratar',1 ,55,1.59);
INSERT into Consulta values (2, '2018-04-10', 2 ,2 ,2, '10:00:00 am', 'Paciente con mejora en su tratamiento',2, 55,1.59);
INSERT into Consulta values (3, '2018-01-04', 2 ,2 ,3, '09:00:00 am', 'Paciente que se resiste a la trata medica de su enfermedad',3, 72,169);
INSERT into Consulta values (4, '2018-03-19', 2 ,2 ,4, '11:00:00 am', 'AL final se aplico para llevar a cabo el proceso de recuperacion',4, 55,169);


INSERT INTO dsm5 VALUES(1,'V62.3','Z55.9','Academic or educational problem');
INSERT INTO dsm5 VALUES(2,'V62.4','Z60.3','Acculturation difficulty');
INSERT INTO dsm5 VALUES(3,'308.3','F43.0','Acute stress disorder');


INSERT into PreguntasPrueba values (1, 1,'Me siento con un estado de ·nimo ansioso, con preocupaciones, siempre esperando de lo peor e irritable.',NULL,1);
INSERT into PreguntasPrueba values (2, 2,'Me siento con tensiÛn, sin poder relajarme, lloro f·cilmente, tengo temblores y sensaciÛn de inquietud.',NULL,1);
INSERT into PreguntasPrueba values (3, 3,'Sufro alguno de estos temores: a la oscuridad, a los desconocidos, a quedarme solo, a los animales grandes, al tr·fico, a las multitudes.',NULL,1);
INSERT into PreguntasPrueba values (4, 4,'Tengo insomnio. Dificultad para dormir, sueÒo interrumpido, sueÒo insatisfactorio o cansancio al despertar.',NULL,1);
INSERT into PreguntasPrueba values (5, 5,'Sufro dificultades para concentrarse y mala memoria.',NULL,1);

-- primera prueba del paciente 1
INSERT INTO respuestas VALUES (1,1,1,1);
INSERT INTO respuestas VALUES (2,1,2,3);
INSERT INTO respuestas VALUES (3,1,3,5);
INSERT INTO respuestas VALUES (4,1,4,1);
INSERT INTO respuestas VALUES (5,1,5,0);


-- segunda prueba del paciente 1
INSERT INTO respuestas VALUES (6,2,1,1);
INSERT INTO respuestas VALUES (7,2,2,1);
INSERT INTO respuestas VALUES (8,2,3,4);
INSERT INTO respuestas VALUES (9,2,4,1);
INSERT INTO respuestas VALUES (10,2,5,1);


-- primera prueba del paciente 2
INSERT INTO respuestas VALUES (11,3,1,4);
INSERT INTO respuestas VALUES (12,3,2,4);
INSERT INTO respuestas VALUES (13,3,3,2);
INSERT INTO respuestas VALUES (14,3,4,4);
INSERT INTO respuestas VALUES (15,3,5,1);


-- segunda prueba del paciente 2
INSERT INTO respuestas VALUES (16,4,1,0);
INSERT INTO respuestas VALUES (17,4,2,1);
INSERT INTO respuestas VALUES (18,4,3,1);
INSERT INTO respuestas VALUES (19,4,4,1);
INSERT INTO respuestas VALUES (20,4,5,1);


insert into GeneraDiagnostico values (1,1);
insert into GeneraDiagnostico values (2,3);
insert into GeneraDiagnostico values (3,2);
insert into GeneraDiagnostico values (4,3);


INSERT INTO tienedetallereceta VALUES (1,1,'Pastilla para el dolor','10 dias','8 horas',2);
INSERT INTO tienedetallereceta VALUES (2,3,'Pastilla para desinflamar','4 dias','8 horas',1);
INSERT INTO tienedetallereceta VALUES (3,2,'Pastilla para mareo','2 dias','8 horas',1);
INSERT INTO tienedetallereceta VALUES (4,1,'Pastilla para el dolor','10 dias','8 horas',2);	