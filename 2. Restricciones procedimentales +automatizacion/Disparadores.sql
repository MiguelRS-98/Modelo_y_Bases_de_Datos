CREATE OR REPLACE TRIGGER fechaTorneoInicial
BEFORE INSERT ON Torneo
FOR EACH ROW
DECLARE
torneoInicial number;
BEGIN
:new.fechaInicial:= sysdate;
SELECT COUNT(*) +1 INTO torneoInicial FROM Torneo; 
:new.idTorneo:=torneoInicial;
END fechaTorneoInicial;


CREATE OR REPLACE TRIGGER identificarClub
BEFORE INSERT ON Club
FOR EACH ROW
DECLARE
cont NUMBER;
BEGIN
    SELECT COUNT(idClub)+1 INTO cont FROM Club;
    IF cont>1 THEN
        raise_application_error(-20007,'Un equipo solo puede tener una identificación.');
    END IF;
END identificarClub;


CREATE OR REPLACE TRIGGER estadioLocal
BEFORE DELETE ON Estadio
FOR EACH ROW
BEGIN 
    raise_application_error(-20007,'No se pueden eliminar los datos del estadio.');
END;


CREATE OR REPLACE TRIGGER dorsalDelJugador
BEFORE INSERT ON Jugador
FOR EACH ROW
DECLARE
    consec NUMBER;
BEGIN
    SELECT (MAX(dorsalJugador)) INTO consec FROM Jugador;
    IF consec IS NULL THEN
        :new.dorsalJugador:= 1;
    ELSE
        :new.dorsalJugador:= consec+1;
    END IF;
END dorsalDelJugador;