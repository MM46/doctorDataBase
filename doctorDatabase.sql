BEGIN;
CREATE DATABASE doctorDatabase;
Use doctorDatabase;

-- CREATING TABLES

CREATE TABLE Paciente(
	idPaciente int,
	nombre varchar(50),
	fechaNacimiento date,
	idPrueba int,

	PRIMARY KEY (idPaciente),
	FOREIGN KEY (idPrueba) references Prueba(idPrueba)

);

CREATE TABLE Consulta(
	idConsulta int,
	fecha date,
	idPaciente int,
	hora date,
	notaClinina varchar(50),
	peso int,
	estatura int,

	PRIMARY KEY (idConsulta),
	FOREIGN KEY (idPaciente) references Paciente(idPaciente),
	FOREIGN KEY (idDoctor) references Doctor(idDoctor),
	FOREIGN KEY (idInstancia) references InstanciaPrueba(idInstancia)

);

CREATE TABLE DSM5(
	idDSM5 int,
	icd9 int,
	icd10 int,
	dsm5Descripcion varchar(50),
  
	PRIMARY KEY (idDSM5)

);

CREATE TABLE recetaMedica(
	idReceta int,

	PRIMARY KEY (idReceta)
);



CREATE TABLE medicamento(
  
	idMedicamento int,
  
	nombreMedicamento varchar(50),
  
	ingredienteActivo varchar(50),
  
	laboratorio varchar(50),
  
	presentacion varchar(50),
  
	PRIMARY KEY(idMedicamento)

);



CREATE TABLE Doctor(
  
	idDoctor int,
  
	nombreDoctor varchar(50),
  
	PRIMARY KEY (idDoctor)

);



CREATE TABLE InstanciaPrueba(
  
	idInstancia int,
  
	fecha date,
  
	total int,
 
	idPrueba int, 
	PRIMARY KEY (idInstancia),
	FOREIGN KEY (idPrueba) references Prueba(idPrueba)


);


CREATE TABLE GeneraDiagnostico(
	idConsultas int,
	idDSM5 int,
	PRIMARY KEY (idConsultas, idDMS5),
	FOREIGN KEY (idConsultas) references Consulta(idConsultas),
	FOREIGN KEY (idDSM5) references DMS5(idDSM5)

);

CREATE TABLE TieneDetalleReceta (
	idRecetaMedica int,
	idMedicamento int,
	instrucciones varchar(200),
	dias date,
	frecuencia varchar(50),
	dosis int,
	PRIMARY KEY (idRecetaMedica, idMedicamento),
	FOREIGN KEY (idRecetaMedica) references RecetaMedica (idRecetaMedica),
	FOREIGN KEY (idMedicamento) references Medicamento (idMedicamento)
);



CREATE TABLE Prueba(
	idPrueba int,
	descripcion varchar(30),
	PRIMARY KEY (idPrueba)
);

CREATE TABLE PreguntasPrueba( 
	idPreguntasPrueba int,
	numeroPregunta int,
	TextoPregunta varchar(20),
	ayudaPregunta varchar(200),
	idPrueba int,
	PRIMARY KEY (idPreguntasPrueba),
	FOREIGN KEY (idPrueba) references Prueba(idPrueba)
);

CREATE TABLE respuestas(
  
	idRespuestas int,
	idInstancia Int,
    idPreguntasPrueba Int,
	valor int,
  
	PRIMARY KEY(idRespuestas, idInstancia),
	FOREIGN KEY (idInstancia) references InstanciaPrueba(idInstancia),
	FOREIGN KEY (idPreguntasPrueba) references PreguntasPrueba(idPreguntasPrueba)

);

-- Reporte deconsultas (nombre paciente, fecha Nac,#visitas)
CREATE TABLE reporteDeConsultas(
	idConsulta int,
    idPaciente int,
    nombrePaciente varchar(50),
	nombreDoctor varchar(50),
    diagnostico varchar(200),
    fechaNacimiento DATE,
    noVisitas int,
    
    PRIMARY KEY(idConsulta),
    FOREIGN KEY(idPaciente) references Paciente(idPaciente)
);


COMMIT;
