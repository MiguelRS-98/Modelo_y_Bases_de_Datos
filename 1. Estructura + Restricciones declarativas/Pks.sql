/*PKS TORNEO*/
ALTER TABLE Torneo ADD CONSTRAINT PK_Torneo PRIMARY KEY(idTorneo);

/*PKS LUGAR*/
ALTER TABLE Lugar ADD CONSTRAINT PK_Lugar PRIMARY KEY(idLugar);

/*PKS CLUB*/
ALTER TABLE Club ADD CONSTRAINT PK_Club PRIMARY KEY(idClub);

/*PKS ESTADIO*/
ALTER TABLE Estadio ADD CONSTRAINT PK_Estadio PRIMARY KEY(idEstadio);

/*PKS PARTIDO*/
ALTER TABLE Partido ADD CONSTRAINT PK_Partido PRIMARY KEY(idPartido);

/*PKS ADMINISTRATIVO*/
ALTER TABLE Administrativo ADD CONSTRAINT PK_Administrativo PRIMARY KEY(idAdminClub);

/*PKS DEPORTIVO*/
ALTER TABLE Deportivo ADD CONSTRAINT PK_Deportivo PRIMARY KEY(idDep);

/*PKS DIRECTOR*/
ALTER TABLE Director ADD CONSTRAINT PK_Director PRIMARY KEY(idDirector);

/*PKS JUGADOR*/
ALTER TABLE Jugador ADD CONSTRAINT PK_Jugador PRIMARY KEY(idJugador);

/*PKS ARBITRO*/
ALTER TABLE Arbitro ADD CONSTRAINT PK_Arbitro PRIMARY KEY(idArb);

/*PKS TARJETA*/
ALTER TABLE Tarjeta ADD CONSTRAINT PK_Tarjeta PRIMARY KEY(idPartido1);

/*PKS GOL*/
ALTER TABLE Gol ADD CONSTRAINT PK_Gol PRIMARY KEY(idPartido2);