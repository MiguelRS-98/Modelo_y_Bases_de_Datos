CREATE OR REPLACE PACKAGE BODY PC_Torneo AS
    PROCEDURE Ad_torneo(xid_torneo IN NUMBER,xnombre_torneo IN VARCHAR,xid_lugartorneo IN NUMBER,xcant_Club IN NUMBER,xfecha_inicial IN DATE,xfecha_final IN DATE);
    BEGIN
     INSERT INTO Torneo(idTorneo,nombreTorneo,idLugarTor,cantClub, fechaInicial,fechaFinal) VALUES (xid_torneo,xnombre_torneo,xid_lugartorneo,xcant_Club,xfecha_inicial,xfecha_final);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    
    PROCEDURE Ad_partido(xid_partido IN NUMBER,xid_club1 IN NUMBER,xid_estadio0 IN NUMBER,xid_arb0 IN NUMBER,xfecha_partido IN DATE);
    BEGIN
     INSERT INTO Partido(idPartido, idClub1,idEstadio0, idArb0,fechaPartido) VALUES (xid_partido,xid_club1,xid_estadio0,xid_arb0,xfecha_partido);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
   PROCEDURE  Ad_tarjeta(xid_partido1 IN NUMBER,xid_jugador1 IN NUMBER,xcant_tarjetas IN NUMBER);
    BEGIN
     INSERT INTO Tarjeta(idPartido1,idJugador1,cantTarjetas) VALUES (xid_partido1,xid_jugador1,xcant_tarjetas);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    
    PROCEDURE Ad_arbitro(xid_arbitro IN NUMBER,xnombre_arbitro IN VARCHAR,xedad_arbitro IN VARCHAR,xpais_arbitro in NUMBER);
    BEGIN
     INSERT INTO Arbitro(idArb,nombreArb,edadArb, paisArb) VALUES (xid_arbitro,xnombre_arbitro,xedad_arbitro,xpais_arbitro);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    
    PROCEDURE Ad_gol(xid_partido2 IN NUMBER,xid_jugador2 IN NUMBER,xcant_goles IN NUMBER);
    BEGIN
     INSERT INTO Gol(idPartido2,idJugador2,cantGoles) VALUES (xid_partido2,xid_jugador2,xcant_goles);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    
    
    PROCEDURE Mod_torneo(xid_torneo IN NUMBER,xfecha_inicial IN DATE,xfecha_final IN DATE) AS
    BEGIN
    UPDATE Torneo SET fechaInicial = xfecha_inicial, fechaFinal = xfecha_final WHERE idTorneo = xid_torneo;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE Mod_partido(xid_partido IN NUMBER,xid_estadio0 IN NUMBER,xid_arb0 IN NUMBER,xfecha_partido IN DATE) AS
    BEGIN
    UPDATE Partido SET idEstadio0 = xid_estadio0,idArb0 = xid_arb0, fechaPartido=xfecha_partido WHERE idPartido = xid_partido;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
END PC_Torneo;
/

CREATE OR REPLACE PACKAGE BODY PC_Club AS
    PROCEDURE Ad_club(xid_club IN NUMBER,xnombre_club IN VARCHAR,xestadio IN NUMBER,xliga IN NUMBER,xposicion IN VARCHAR,xcant_club IN NUMBER);
    BEGIN
     INSERT INTO Club(idClub,nombreClub,idEstadio0,ligaParticipante, posicionTorneo,cantJugador) VALUES (xid_club ,xnombre_club,xestadio,xliga,xposicion ,xcant_club);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    PROCEDURE Ad_administrativo(xid_adminclub IN NUMBER,xid_admin IN NUMBER,xcargo IN VARCHAR,xnombre_admin IN VARCHAR);
    BEGIN
     INSERT INTO Administrativo(idAdminClub,idAdmin,cargoAdmin,nombreAdmin) VALUES (xid_adminclub,xid_admin,xcargo,xnombre_admin);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    
    PROCEDURE Ad_deportivo(xid_dep IN NUMBER,xid_depclub IN NUMBER);
    BEGIN
     INSERT INTO Deportivo(idDep, idDepClub) VALUES (xid_dep ,xid_depclub);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
   PROCEDURE  Ad_director(xid_director IN NUMBER,xnombre_director IN VARCHAR,xedad_director IN VARCHAR,xpais_director IN NUMBER,xcant_director IN NUMBER);
    BEGIN
     INSERT INTO Director(idDirector,nombreDirector,edadDirector,paisDirector,cantPartidosDirector) VALUES (xid_director,xnombre_director,xedad_director,xpais_director,xcant_director);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    
    PROCEDURE  Ad_jugador(xid_jugador IN NUMBER,xnombre_jugador IN VARCHAR,xedad_jugador IN VARCHAR,xpais_jugador IN NUMBER,xdorsal_jugador IN NUMBER,xposicion_jugador IN VARCHAR,xcant_jugador IN NUMBER,xlesion_jugador IN VARCHAR);
    BEGIN
     INSERT INTO Jugador(idJugador,nombreJugador,edadJugador,paisJugador,dorsalJugador,posicionJugador,cantPartidosJugador,lesionJugador) VALUES (xid_jugador,xnombre_jugador,xedad_jugador,xpais_jugador,xdorsal_jugador,xposicion_jugador,xcant_jugador,xlesion_jugador);
     COMMIT;
     EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20400,'Error al insertar');
    END;
    

    PROCEDURE Mod_deportivo(xid_dep IN NUMBER,xid_depclub IN NUMBER) AS
    BEGIN
    UPDATE Deportivo SET idDepClub = xid_depclub WHERE idDep = xid_dep;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    PROCEDURE Mod_director(xid_director IN NUMBER,xnombre_director IN VARCHAR,xedad_director IN VARCHAR,xpais_director IN NUMBER,xcant_director IN NUMBER) AS
    BEGIN
    UPDATE Director SET nombreDirector = xnombre_director,edadDirector = xedad_director, paisDirector=xpais_director,cantPartidosDirector=xcant_director WHERE  idDirector = xid_director;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    PROCEDURE Mod_jugador(xid_jugador IN NUMBER,xedad_jugador IN VARCHAR,xpais_jugador IN NUMBER,xdorsal_jugador IN NUMBER,xposicion_jugador IN VARCHAR,xcant_jugador IN NUMBER,xlesion_jugador IN VARCHAR) AS
    BEGIN
    UPDATE Jugador SET edadJugador = xedad_jugador,paisJugador = xpais_jugador, dorsalJugador=xdorsal_jugador,posicionJugador=xposicion_jugador,cantPartidosJugador=xcant_jugador ,lesionJugador=xlesion_jugador WHERE idJugador = xid_jugador;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    PROCEDURE Mod_club(xid_club IN NUMBER,xestadio IN NUMBER,xliga IN NUMBER,xposicion IN VARCHAR,xcant_club IN NUMBER) AS
    BEGIN
    UPDATE Club SET idEstadio0=xestadio,ligaParticipante = xliga,posicionTorneo = xposicion, cantJugador=xcant_club WHERE idClub = xid_club;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    PROCEDURE Mod_administrativo(xid_adminclub IN NUMBER,xcargo IN VARCHAR) AS
    BEGIN
    UPDATE Administrativo SET cargoAdmin=xcargo WHERE idAdminClub = xid_adminclub;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    

    PROCEDURE EL_jugador(xid_jugador IN NUMBER) AS
    BEGIN
    IF xid_jugador = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20440,'Error al eliminar, ningun dato puede ser nulo');
    ELSE
        DELETE FROM Jugador WHERE idJugador = xid_jugador;
        COMMIT;
    END IF;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20441,'Error al eliminar');
    END;
    PROCEDURE EL_club(xid_club IN NUMBER) AS
    BEGIN
    IF xid_club = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20440,'Error al eliminar, ningun dato puede ser nulo');
    ELSE
        DELETE FROM Club WHERE idClub = xid_club;
        COMMIT;
    END IF;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20441,'Error al eliminar');
    END;
    PROCEDURE EL_director(xid_director IN NUMBER) AS
    BEGIN
    IF xid_director = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20440,'Error al eliminar, ningun dato puede ser nulo');
    ELSE
        DELETE FROM Director WHERE idDirector = xid_director;
        COMMIT;
    END IF;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20441,'Error al eliminar');
    END;

END PC_Club;
/

CREATE OR REPLACE PACKAGE BODY PC_Estadio AS
    PROCEDURE Ad_Estadio(xidestadio IN NUMBER,xidugar IN NUMBER,xnombre IN VARCHAR,xcapacidad IN NUMBER) AS
    BEGIN
    IF xidestadio IS NULL OR xidlugar IS NULL OR xnombre = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20422,'Error al insertar');
    ELSE 
        INSERT INTO Estadio(idEstadio,idLugarEst,nombre,capacidad) VALUES (xidestadio,xidlugar,xnombre,xcapacidad);
        COMMIT;
    END IF;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20423,'Error al insertar');
    END;
    PROCEDURE Mod_Estadio(xidestadio IN NUMBER,xcapacidad IN NUMBER) AS
    BEGIN
    UPDATE Estadio SET capacidadEstadio=xcapacidad WHERE idEstadio = xidestadio;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    
    PROCEDURE El_Estadior(xidestadio IN NUMBER) AS
    BEGIN
    IF xidestadio = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20440,'Error al eliminar, ningun dato puede ser nulo');
    ELSE
        DELETE FROM Estadio WHERE idEstadio = xidestadio;
        COMMIT;
    END IF;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20441,'Error al eliminar');
    END;

END PC_Estadio;
/

CREATE OR REPLACE PACKAGE BODY PC_Lugar AS
    PROCEDURE Ad_Lugar(xid IN NUMBER,xPaisLugar IN VARCHAR,xCiudadLugar IN VARCHAR) AS
    BEGIN
    IF xid IS NULL OR xPaisLugar IS NULL OR xCiudadLugar = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20422,'Error al insertar');
    ELSE 
        INSERT INTO Lugar(idLugar,paisLugar,ciudadLugar) VALUES (xid,xPaisLugar,xCiudadLugar);
        COMMIT;
    END IF;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20423,'Error al insertar');
    END;
    PROCEDURE Mod_Lugar(xid IN NUMBER,xPaisLugar IN VARCHAR,xCiudadLugar IN VARCHAR) AS
    BEGIN
    UPDATE Estadio SET paisLugar=xPaisLugar,ciudadLugar=xCiudadLugar WHERE idLugar = xid;
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20415,'Error al modificar');
    END;
    PROCEDURE El_Lugar(xid IN NUMBER) AS
    BEGIN
    IF xid = NULL THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20440,'Error al eliminar, ningun dato puede ser nulo');
    ELSE
        DELETE FROM Lugar WHERE idLugar = xid;
        COMMIT;
    END IF;
    EXCEPTION
     WHEN OTHERS THEN
     ROLLBACK;
     RAISE_APPLICATION_ERROR(-20441,'Error al eliminar');
    END;

END PC_Lugar;
/
