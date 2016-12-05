CREATE VIEW `view_consulta` AS
select folio, id_paciente, Medico.id_especialidad as especialidad, fecha, costo, Medico.id_personal
from Consulta inner join Medico
on Consulta.id_personal = Medico.id_personal;
