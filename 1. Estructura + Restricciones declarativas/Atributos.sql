/*ATRIBUTOS TORNEO*/
ALTER TABLE Torneo ADD CONSTRAINT CHK_idTorneo_Torneo CHECK (idTorneo BETWEEN 1 AND 99999 );
ALTER TABLE Torneo ADD CONSTRAINT CHK_nombreTorneo_Torneo CHECK ( REGEXP_LIKE(nombreTorneo,'^([A-Z]*)$' ));
ALTER TABLE Torneo ADD CONSTRAINT CHK_idLugar_Torneo CHECK (idLugarTor BETWEEN 1 AND 99999 );
ALTER TABLE Torneo ADD CONSTRAINT CHK_cantClub_Torneo CHECK (cantClub BETWEEN 1 AND 99 );

/*ATRIBUTOS LUGAR*/
ALTER TABLE Lugar ADD CONSTRAINT CHK_idLugar_Lugar CHECK (idLugar BETWEEN 1 AND 99999 );
ALTER TABLE Lugar ADD CONSTRAINT CHK_PaisLugar_Lugar CHECK ( REGEXP_LIKE(paisLugar,'^([A-Z]*)$' ));
ALTER TABLE Lugar ADD CONSTRAINT CHK_CiudadLugar_Lugar CHECK ( REGEXP_LIKE(ciudadLugar,'^([A-Z]*)$' ));

/*ATRIBUTOS CLUB*/
ALTER TABLE Club ADD CONSTRAINT CHK_idClub_Club CHECK (idClub BETWEEN 1 AND 99999 );
ALTER TABLE Club ADD CONSTRAINT CHK_nombreClub_Club CHECK ( REGEXP_LIKE(nombreClub,'^([A-Z]*)$' ));
ALTER TABLE Club ADD CONSTRAINT CHK_idLiga_Club CHECK (ligaParticipante BETWEEN 1 AND 99999 );
ALTER TABLE Club ADD CONSTRAINT CHK_posicionClub_Club CHECK (posicionTorneo BETWEEN 1 AND 99 );
ALTER TABLE Club ADD CONSTRAINT CHK_cantidadJug_Club CHECK (cantJugador BETWEEN 1 AND 99 );

/*ATRIBUTOS ESTADIO*/
ALTER TABLE Estadio ADD CONSTRAINT CHK_idEstadio_Estadio CHECK (idEstadio BETWEEN 1 AND 99999 );
ALTER TABLE Estadio ADD CONSTRAINT CHK_idLugar_Estadio CHECK (idLugarEst BETWEEN 1 AND 99999 );
ALTER TABLE Estadio ADD CONSTRAINT CHK_nombreEstadio_Estadio CHECK ( REGEXP_LIKE(nombreEstadio,'^([A-Z]*)$' ));
ALTER TABLE Estadio ADD CONSTRAINT CHK_capacidadEstadio_Estadio CHECK (capacidadEstadio BETWEEN 1 AND 99999 );

/*ATRIBUTOS PARTIDO*/
ALTER TABLE Partido ADD CONSTRAINT CHK_idPartido_Partido CHECK (idPartido BETWEEN 1 AND 99999 );
ALTER TABLE Partido ADD CONSTRAINT CHK_idClub_Partido CHECK (idClub BETWEEN 1 AND 99999 );
ALTER TABLE Partido ADD CONSTRAINT CHL_lugar_Partido CHECK (idClub BETWEEN 1 AND 99999 );

/*ATRIBUTOS ADMINISTRATIVO*/
ALTER TABLE Administrativo ADD CONSTRAINT CHK_idAdminClub_Administrativo CHECK (idAdminClub BETWEEN 1 AND 99999 );
ALTER TABLE Administrativo ADD CONSTRAINT CHK_idAdm_Administrativo CHECK (idAdmin BETWEEN 1 AND 99999 );
ALTER TABLE Administrativo ADD CONSTRAINT CHK_nombreAdm_Administrativo CHECK ( REGEXP_LIKE(nombreAdmin,'^([A-Z]*)$' ));
ALTER TABLE Administrativo ADD CONSTRAINT CHK_cargoAdm_Administrativo CHECK ( REGEXP_LIKE(cargoAdmin,'^([A-Z]*)$' ));

/*ATRIBUTOS DEPORTIVO*/
ALTER TABLE Deportivo ADD CONSTRAINT CHK_idDepClub_Deportivo CHECK (idDepClub BETWEEN 1 AND 99999 );
ALTER TABLE Deportivo ADD CONSTRAINT CHK_idDep_Deportivo CHECK (idDep BETWEEN 1 AND 99999 );

/*ATRIBUTOS DIRECTOR*/
ALTER TABLE Director ADD CONSTRAINT CHK_idDirDep_Dir CHECK (idDirDep BETWEEN 1 AND 99999 );
ALTER TABLE Director ADD CONSTRAINT CHK_idDir_Dir CHECK (idDirector BETWEEN 1 AND 99999 );
ALTER TABLE Director ADD CONSTRAINT CHK_nombreDir_Dir CHECK ( REGEXP_LIKE(nombreDirector,'^([A-Z]*)$' ));
ALTER TABLE Director ADD CONSTRAINT CHK_paisDir_Dir CHECK ( REGEXP_LIKE(paisDirector,'^([A-Z]*)$' ));
ALTER TABLE Director ADD CONSTRAINT CHK_edadDirector_Dir CHECK (edadDirector BETWEEN 1 AND 99);
ALTER TABLE Director ADD CONSTRAINT CHK_paisDirector_Dir CHECK ( REGEXP_LIKE(paisDirector,'^([A-Z]*)$' ));
ALTER TABLE Director ADD CONSTRAINT CHK_cantPartidosDirector_Dir CHECK (cantPartidosDirector BETWEEN 0 AND 99999);

/*ATRIBUTOS JUGADOR*/
ALTER TABLE Jugador ADD CONSTRAINT CHK_idJugDep_Jug CHECK (idJugDep BETWEEN 1 AND 99999 );
ALTER TABLE Jugador ADD CONSTRAINT CHK_idJugador_Jug CHECK (idJugador BETWEEN 1 AND 99999 );
ALTER TABLE Jugador ADD CONSTRAINT CHK_nombreJugador_Jugador CHECK ( REGEXP_LIKE(nombreJugador,'^([A-Z]*)$' ));
ALTER TABLE Jugador ADD CONSTRAINT CHK_paisJugador_Jug CHECK ( REGEXP_LIKE(paisJugador,'^([A-Z]*)$' ));
ALTER TABLE Jugador ADD CONSTRAINT CHK_edadJugador_Jug CHECK (edadJugador BETWEEN 1 AND 62);
ALTER TABLE Jugador ADD CONSTRAINT CHK_dorsalJugador_Jug CHECK (dorsalJugador BETWEEN 0 AND 99);
ALTER TABLE Jugador ADD CONSTRAINT CHK_posicionJugador_Jug CHECK ( REGEXP_LIKE(posicionJugador,'^([A-Z]*)$' ));
ALTER TABLE Jugador ADD CONSTRAINT CHK_cantPartidosJugador_Jug CHECK (cantPartidosJugador BETWEEN 0 AND 99999);
ALTER TABLE Jugador ADD CONSTRAINT CHK_lesionJugador_Jug CHECK ( REGEXP_LIKE(lesionJugador,'^([A-Z]*)$' ));

/*ATRIBUTOS ARBITRO*/
ALTER TABLE Arbitro ADD CONSTRAINT CHK_idPar_Arbitro CHECK (idPartido BETWEEN 1 AND 99999 );
ALTER TABLE Arbitro ADD CONSTRAINT CHK_idArb_Arbitro CHECK (idArb BETWEEN 1 AND 99999 );
ALTER TABLE Arbitro ADD CONSTRAINT CHK_nombreArb_Arbitro CHECK ( REGEXP_LIKE(nombreArb,'^([A-Z]*)$' ));
ALTER TABLE Arbitro ADD CONSTRAINT CHK_paisArb_Arbitro CHECK ( REGEXP_LIKE(paisArb,'^([A-Z]*)$' ));

/*ATRIBUTOS TARJETA*/
ALTER TABLE Tarjeta ADD CONSTRAINT CHK_idPartido_Tarjeta CHECK (idPartido BETWEEN 1 AND 99999 );
ALTER TABLE Tarjeta ADD CONSTRAINT CHK_idJug_Tarjeta CHECK (idJugador BETWEEN 1 AND 99999 );
ALTER TABLE Tarjeta ADD CONSTRAINT CHK_cantTarjeta_Tarjeta CHECK (cantTarjetas BETWEEN 1 AND 999 );

/*ATRIBUTOS GOL*/
ALTER TABLE Gol ADD CONSTRAINT CHK_idPartido_gol CHECK (idPartido BETWEEN 1 AND 99999 );
ALTER TABLE Gol ADD CONSTRAINT CHK_idJug_gol CHECK (idJugador BETWEEN 1 AND 99999 );
ALTER TABLE Gol ADD CONSTRAINT CHK_cantGol_gol CHECK (cantGol BETWEEN 1 AND 999 );