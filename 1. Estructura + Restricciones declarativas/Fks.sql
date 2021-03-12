/*FKS TORNEO*/
ALTER TABLE Torneo ADD CONSTRAINT FK_Torneo_Lugar FOREIGN KEY (idLugarTor) REFERENCES Lugar(idLugar);

/*FKS CLUB*/
ALTER TABLE Club ADD CONSTRAINT FK_Club_Torneo FOREIGN KEY (ligaParticipante) REFERENCES Torneo(idTorneo);
ALTER TABLE Club ADD CONSTRAINT FK_Club_Estadio FOREIGN KEY (idEstadio0) REFERENCES Estadio(idEstadio);

/*FKS ESTADIO*/
ALTER TABLE Estadio ADD CONSTRAINT FK_Estadio_Lugar FOREIGN KEY (idLugarEst) REFERENCES Lugar(idLugar);

/*FKS PARTIDO*/
ALTER TABLE Partido ADD CONSTRAINT FK_Partido_Club FOREIGN KEY (idClub1) REFERENCES Club(idClub);
ALTER TABLE Partido ADD CONSTRAINT FK_Partido_Arbitro FOREIGN KEY (idArb0) REFERENCES Arbitro(idArb);
ALTER TABLE Partido ADD CONSTRAINT FK_Partido_Estadio FOREIGN KEY (idEstadio0) REFERENCES Estadio(idEstadio);

/*FKS ADMINISTRATIVO*/
ALTER TABLE Administrativo ADD CONSTRAINT FK_Administrativo_Club FOREIGN KEY (idAdminClub) REFERENCES Club(idClub);

/*FKS DEPORTIVO*/
ALTER TABLE Deportivo ADD CONSTRAINT FK_Deportivo_Lugar FOREIGN KEY (idDepClub) REFERENCES Club(idClub);

/*FKS DIRECTOR*/
ALTER TABLE Director ADD CONSTRAINT FK_Director_Deportivo FOREIGN KEY (idDirector) REFERENCES Deportivo(idDep);
ALTER TABLE Director ADD CONSTRAINT FK_Director_Lugar FOREIGN KEY (paisDirector) REFERENCES Lugar(idLugar);

/*FKS JUGADOR*/
ALTER TABLE Jugador ADD CONSTRAINT FK_Jugador_Deportivo FOREIGN KEY (idJugador) REFERENCES Deportivo(idDep);
ALTER TABLE Jugador ADD CONSTRAINT FK_Jugador_Lugar FOREIGN KEY (paisJugador) REFERENCES Lugar(idLugar);

/*FKS ARBITRO*/
/*No se encuentra o no hay.*/

/*FKS TARJETA*/
ALTER TABLE Tarjeta ADD CONSTRAINT FK_Partido_Tarjetas FOREIGN KEY (idPartido1) REFERENCES Partido(idPartido);
ALTER TABLE Tarjeta ADD CONSTRAINT FK_Tarjeta_Jugador FOREIGN KEY (idJugador1) REFERENCES Jugador(idJugador);

/*FKS GOL*/
ALTER TABLE Gol ADD CONSTRAINT FK_Partido_Goles FOREIGN KEY (idPartido2) REFERENCES Partido(idPartido);
ALTER TABLE Gol ADD CONSTRAINT FK_Gol_Jugador FOREIGN KEY (idJugador2) REFERENCES Jugador(idJugador);