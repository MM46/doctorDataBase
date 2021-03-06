USE doctorDatabase;

-- COLLECTING DATA

INSERT into prueba values (1, 'Test Ansiedad Hamilton');
INSERT into prueba values (2, 'Test Depresion Hamilton');

INSERT into doctor values (1, 'Carlos Alberto Becerra Laguna');
INSERT into doctor values (2,'JosuÈ EnrÌquez MarÌn');

INSERT into paciente values (1, 'Laura Gongora', '1998-08-31',0);
INSERT into paciente values (2, 'Christofer Garza','1993-08-16',1);

INSERT INTO paciente VALUES (3, 'Mariana Rodriguez', '1992-03-29', 2);
INSERT into paciente values (3, 'Marian Muñoz','1996-10-01');

INSERT into paciente values (4, 'Andrea Garcia','1990-01-10');
INSERT into paciente values (5, 'Jimena Terrazas','1989-11-22');

INSERT into InstanciaPrueba values (1, '2018-02-05', 10, 1);
INSERT into InstanciaPrueba values (2, '2018-04-08', 8, 1);

INSERT into InstanciaPrueba values (3, '2018-01-10', 15, 1);
INSERT into InstanciaPrueba values (4, '2018-03-14', 4, 1);

INSERT into InstanciaPrueba values (5, '2018-02-25', 10, 1);
INSERT into InstanciaPrueba values (6, '2018-04-30', 8, 1);

INSERT into InstanciaPrueba values (7, '2018-03-16', 15, 1);
INSERT into InstanciaPrueba values (8, '2018-04-14', 4, 1);

INSERT into InstanciaPrueba values (9, '2018-02-11', 10, 1);
INSERT into InstanciaPrueba values (10, '2018-04-14', 8, 1);

INSERT INTO medicamento VALUES (1,'Tressvin','Sertralina','ifa Celtics','Tabletas 50 mg');
INSERT INTO medicamento VALUES (2,'TIM ASF','Quetiapina','Asofarma','Tabletas 100 mg');

INSERT INTO medicamento VALUES (3,'Farmaxetina','Flouxetina','ifa Celtics','Tabletas 20 mg');

INSERT into Consulta values (1, '2018-02-01', 1 ,1 ,1, '08:00:00 am', 'Paciente facil de tratar',1 ,55,1.59);
INSERT into Consulta values (2, '2018-04-10', 2 ,2 ,2, '10:00:00 am', 'Paciente con mejora en su tratamiento',2, 55,1.59);

INSERT into Consulta values (3, '2018-01-04', 2 ,2 ,3, '09:00:00 am', 'Paciente que se resiste a la trata medica de su enfermedad',3, 72,169);
INSERT into Consulta values (4, '2018-03-19', 2 ,2 ,4, '11:00:00 am', 'AL final se aplico para llevar a cabo el proceso de recuperacion',4, 55,169);

INSERT into Consulta values (5, '2018-03-19', 3 ,2 ,5, '03:00:00 pm', 'Se aumento la dosis de sus medicamentos',5, 60,1.79);
INSERT into Consulta values (6, '2018-04-01', 3 ,2 ,6, '12:00:00 pm', 'Paciente con mucha ansiedad',6, 60,1.79);

INSERT into Consulta values (7, '2018-04-02', 4 ,1 ,7, '05:00:00 pm', 'Presentaron alergia los medicamentos anteriores',7, 70,1.71);
INSERT into Consulta values (8, '2018-04-01', 4 ,1 ,8, '11:00:00 am', 'Paciente en ultima fase de su tratamiento',8, 70,1.71);

INSERT into Consulta values (9, '2018-04-07', 5 ,2 ,9, '08:00:00 am', 'No se ha visto mejora en el paciente',9, 91,1.89);
INSERT into Consulta values (10, '2018-04-09', 5 ,2 ,10, '10:00:00 am', 'Paciente vino a aclarar dudas',10, 91,1.89);



INSERT INTO dsm5 VALUES(1,'V62.3','Z55.9','Academic or educational problem');
INSERT INTO dsm5 VALUES(2,'V62.4','Z60.3','Acculturation difficulty');

INSERT INTO dsm5 VALUES(3,'308.3','F43.0','Acute stress disorder');

INSERT INTO `PreguntasPrueba` (`idPreguntasPrueba`, `numeroPregunta`, `TextoPregunta`, `ayudaPregunta`, `idPrueba`) VALUES
(1, 1, 'Estado Ansioso', 'Preocupaciones, temor de que suceda lo peor, temor anticipado, irritabilidad', 1),
(2, 2, 'Tension', ' Sensaciones de tensión, fatigabilidad, sobresalto al responder, llanto fácil, temblores, sensación de inquietud, imposibilidad de relajarse.', 1),
(3, 3, 'Temores', 'A la oscuridad, a los desconocidos, a ser dejado solo, a los animales, al tráfico, a las multitudes.', 1),
(4, 4, 'Insomnio', 'Dificultad para conciliar el sueño. Sueño interrumpido, sueño insatisfactorio y sensación de fatiga al despertar, pesadillas, terrores nocturnos.', 1),
(5, 5, 'Funciones Untelectuales', 'Dificultad de concentración, mala o escasa memoria.', 1),
(6, 6, 'Humor Depresivo', 'Pérdida de interés. Falta de placer en los pasatiempos, depresión, despertarse más temprano de lo esperado. Variaciones anímicas a lo largo del día.', 1),
(7, 7, 'Sintomas somáticos Musculares', 'Dolores musculares, espasmos musculares o calambres, rigidez muscular, tics, rechinar de dientes, voz vacilante, tono muscular aumentado', 1),
(8, 8, 'Sintomas somáticos sensoriales.', ' Zumbido de oídos, visión borrosa, oleadas de frío y calor,  sensación de debilidad. Sensaciones parestésicas (pinchazos, picazón u hormigueos).', 1),
(9, 9, 'Sintomas Cardiovasculares', 'Taquicardia, palpitaciones, dolor precordial (en el pecho), pulsaciones vasculares pronunciadas, sensacion de \"baja presión\" o desmayo, arritmias.', 1),
(10, 10, 'Sintomas respiratorios', 'Opresión o constricción en el tórax (pecho), sensación de ahogo, suspiros, disnea (sensación de falta de aire o de dificultad respiratoria).', 1),
(11, 11, 'Sintomas gastrointestinales', 'Dificultades al deglutir, flatulencia, dolor abdominal, sensación de ardor, pesadez abdominal, nauseas, vómitos, borborismos, heces blandas, pérdida de peso, constipación.', 1),
(12, 12, 'Sintomas genitourinarios', 'Micciones frecuentes, micción urgente, amenorrea (falta del período menstrual), menorragia, frigidez, eyaculación precoz, pérdida de libido, impotencia sexual.', 1),
(13, 13, 'Sintomas del Sistemas nervioso autonomo', 'Boca seca, accesos de enrojecimiento, palidez, tendencia a la sudoración, vértigos, cefaleas (dolor de cabeza) por tensión, erectismo piloso (piel de gallina).', 1),
(14, 14, 'Conducta en el transcurso del test', 'Inquietud, impaciencia o intranquilidad, temblor de manos, fruncimiento del entrecejo, rostro preocupado, suspiros o respiración rápida, palidez facial, deglución de saliva, eructos, tics.', 1);



insert into GeneraDiagnostico values (1,1);
insert into GeneraDiagnostico values (2,3);

insert into GeneraDiagnostico values (3,2);
insert into GeneraDiagnostico values (4,3);

INSERT INTO tienedetallereceta VALUES (1,1,'Pastilla para el dolor','7 dias','8 horas',2);
INSERT INTO tienedetallereceta VALUES (1,8,'Pastilla para la ansiedad','10 dias','12 horas',1);

INSERT INTO tienedetallereceta VALUES (1,2,'Pastilla para mareo','10 dias','8 horas',2);
INSERT INTO tienedetallereceta VALUES (2,3,'Pastilla para desinflamar','4 dias','12 horas',2);

INSERT INTO tienedetallereceta VALUES (2,6,'Antibiotico','4 dias','8 horas',1);
INSERT INTO tienedetallereceta VALUES (2,5,'Pastilla para prevencion','4 dias','8 horas',1);

INSERT INTO tienedetallereceta VALUES (3,2,'Pastilla para mareo','2 dias','12 horas',1);
INSERT INTO tienedetallereceta VALUES (3,1,'Pastilla para el dolor','8 dias','8 horas',1);

INSERT INTO tienedetallereceta VALUES (3,3,'Pastilla para desinflamar','5 dias','24 horas',1);
INSERT INTO tienedetallereceta VALUES (4,4,'Pastilla para el dolor','6 dias','8 horas',2);

INSERT INTO tienedetallereceta VALUES (4,6,'Antibiotico','14 dias','12 horas',1);
INSERT INTO tienedetallereceta VALUES (4,8,'Pastilla para la ansiedad','30 dias','24 horas',1);

INSERT INTO tienedetallereceta VALUES (5,2,'Pastilla para mareo','5 dias','12 horas',2);
INSERT INTO tienedetallereceta VALUES (5,1,'Pastilla para el dolor','3 dias','8 horas',1);

INSERT INTO tienedetallereceta VALUES (5,7,'Pastilla para prevencion','7 dias','24 horas',1);
INSERT INTO tienedetallereceta VALUES (6,2,'Pastilla para mareo','5 dias','12 horas',2);

INSERT INTO tienedetallereceta VALUES (7,1,'Pastilla para el dolor','3 dias','8 horas',1);
INSERT INTO tienedetallereceta VALUES (8,4,'Pastilla para el dolor','6 dias','8 horas',2);

INSERT INTO tienedetallereceta VALUES (9,6,'Antibiotico','4 dias','8 horas',1);
INSERT INTO tienedetallereceta VALUES (10,5,'Pastilla para prevencion','4 dias','8 horas',1);

INSERT into recetaMedica values (1);
INSERT into recetaMedica values (2);

INSERT into recetaMedica values (3);
INSERT into recetaMedica values (4);

INSERT into recetaMedica values (5);
INSERT into recetaMedica values (6);

INSERT into recetaMedica values (7);
INSERT into recetaMedica values (8);

INSERT into recetaMedica values (9);
INSERT into recetaMedica values (10);


INSERT INTO medicamento VALUES (1,'Tressvin','Sertralina','ifa Celtics','Tabletas 50 mg');
INSERT INTO medicamento VALUES (2,'TIM ASF','Quetiapina','Asofarma','Tabletas 100 mg');

INSERT INTO medicamento VALUES (3,'Farmaxetina','Flouxetina','ifa Celtics','Tabletas 20 mg');
INSERT INTO medicamento VALUES (4,'Advil','Ibuprofeno','Pearson','Tabletas 200 mg');

INSERT INTO medicamento VALUES (5,'Ciprolox','Ciprofloxacino','Altia','Tabletas 500 mg');
INSERT INTO medicamento VALUES (6,'Amoxiclav','Amoxicilina','Pisa','Tabletas 125 mg');

INSERT INTO medicamento VALUES (7,'Terlateq','Telmisartan','Pisa','Tabletas 80 mg');
INSERT INTO medicamento VALUES (8,'Panazeclox','Clonazepam','Pisa','Tabletas 2 mg');


INSERT into Respuestas VALUES (1,1,1,0);
INSERT into Respuestas VALUES (2,1,2,2);

INSERT into Respuestas VALUES (3,1,3,2);
INSERT into Respuestas VALUES (4,1,4,3);

INSERT into Respuestas VALUES (5,1,5,0);
INSERT into Respuestas VALUES (6,1,6,1);

INSERT into Respuestas VALUES (7,1,7,4);
INSERT into Respuestas VALUES (8,1,8,0);

INSERT into Respuestas VALUES (9,1,9,1);
INSERT into Respuestas VALUES (10,1,10,0);

INSERT into Respuestas VALUES (11,1,11,3);
INSERT into Respuestas VALUES (12,1,12,3);

INSERT into Respuestas VALUES (13,1,13,2);
INSERT into Respuestas VALUES (14,1,14,1);

INSERT into Respuestas VALUES (1,2,1,0);

INSERT into Respuestas VALUES (2,2,2,0);
INSERT into Respuestas VALUES (3,2,3,0);

INSERT into Respuestas VALUES (4,2,4,1);
INSERT into Respuestas VALUES (5,2,5,1);

INSERT into Respuestas VALUES (6,2,6,0);
INSERT into Respuestas VALUES (7,2,7,2);

INSERT into Respuestas VALUES (8,2,8,1);
INSERT into Respuestas VALUES (9,2,9,0);

INSERT into Respuestas VALUES (10,2,10,2);
INSERT into Respuestas VALUES (11,2,11,3);

INSERT into Respuestas VALUES (12,2,12,3);
INSERT into Respuestas VALUES (13,2,13,2);

INSERT into Respuestas VALUES (14,2,14,1);

INSERT into Respuestas VALUES (1,3,1,4);
INSERT into Respuestas VALUES (2,3,2,4);

INSERT into Respuestas VALUES (3,3,3,4);
INSERT into Respuestas VALUES (4,3,4,3);

INSERT into Respuestas VALUES (5,3,5,4);
INSERT into Respuestas VALUES (6,3,6,2);

INSERT into Respuestas VALUES (7,3,7,3);
INSERT into Respuestas VALUES (8,3,8,3);

INSERT into Respuestas VALUES (9,3,9,2);
INSERT into Respuestas VALUES (10,3,10,2);

INSERT into Respuestas VALUES (11,3,11,1);
INSERT into Respuestas VALUES (12,3,12,3);

INSERT into Respuestas VALUES (13,3,13,3);
INSERT into Respuestas VALUES (14,3,14,0);
