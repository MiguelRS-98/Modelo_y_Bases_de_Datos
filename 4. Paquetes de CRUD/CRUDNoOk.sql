--CRUDNoOk
DELETE FROM cursos;
INSERT INTO cursos(nombre,siglas) VALUES ('Bases de Datos','MBDA');
select * from cursos;
EXECUTE PC_estudiantes.Ad_estudiantes ('','T.I','sdadad','ASDASD@GGG.com');
EXECUTE PC_estudiantes.Ad_pregrados ('algo','');
EXECUTE PC_estudiantes.Ad_registros ('AA',4);
EXECUTE PC_estudiantes.Mod_registros ('sdsd',43,'aa');
EXECUTE PC_estudiantes.Mod_pregrados ('AAA','');
EXECUTE PC_profesores.Ad_profesores ('A','B','C','D','E','F');
EXECUTE PC_profesores.Mod_profesores ('A','Ingeniero Mecanico','ING123456MEC');
EXECUTE PC_profesores.El_profesores ('ALGO');
EXECUTE PC_recomendaciones .Mod_recomendaciones ('123','A','Es alguien dedcado');
EXECUTE PC_cursos.Ad_cursos('Algoritmo','ALGO');
EXECUTE PC_cursos.Ad_cursosxprof ('A',123);
EXECUTE PC_cursos
