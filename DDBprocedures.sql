Use doctorDatabase;

-- Genera Consultas
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetConsulta`(IN `in_idConsulta` INT)
BEGIN
	SELECT c.idConsulta, c.fecha as 'Fecha Consulta', c.hora as 'Hora', p.idPaciente as 'ID Paciente', p.nombre as 'Nombre Paciente', d.nombreDoctor as 'Nombre Doctor', p.fechaNacimiento as 'Fecha de Nacimiento'
    FROM consulta c join paciente p on p.idPaciente = c.idPaciente join Doctor d on c.idDoctor = d.idDoctor
    WHERE c.idConsulta = in_idConsulta;
END$$

-- Genera Diagnostico
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetDiagnostico`(IN `in_idPaciente` INT)
BEGIN
	SELECT c.idConsulta as 'ID Consulta', c.fecha as 'Fecha Consulta', c.hora as 'Hora', p.nombre as 'Nombre Paciente', d.nombreDoctor as 'Nombre Doctor', dS.dsm5Descripcion as 'Diagnostico'
    FROM consulta c join paciente p on p.idPaciente = c.idPaciente join Doctor d on c.idDoctor = d.idDoctor join GeneraDiagnostico gD on gD.idConsulta = c.idConsulta join DSM5 dS on dS.idDSM5 = gD.idDSM5
    WHERE p.idPaciente = in_idPaciente;
END$$

-- Despliega Test Ansiedad



DELIMITER ;