/*ACCIONES REFENCIALES*/

/*ACCION REFERENCIAL TORNEO*/
/*Al eliminar la siguiente FK(FK_Club_Torneo)se deja null la relacion con el club y torneo, por tanto no habrá ningún registro de el en torneo*/
ALTER TABLE Club ADD CONSTRAINT FK_Club_Torneo FOREIGN KEY (ligaParticipante) REFERENCES Torneo(idTorneo) ON DELETE;

/*ACCION REFERENCIAL CLUB*/
/*Al eliminar la siguiente FK(FK_Administrativo_Club)se deja null la relacion con el club y administrativo, por tanto no habrá ningún registro de él en el club*/
ALTER TABLE Administrativo ADD CONSTRAINT FK_Administrativo_Club FOREIGN KEY (idAdminClub) REFERENCES Club(idClub) ON DELETE;

/*Al eliminar la siguiente FK(FK_Deportivo_Lugar)se deja null la relacion con el club y deportivo, por tanto no habrá ningún registro de él en el club*/
ALTER TABLE Deportivo ADD CONSTRAINT FK_Deportivo_Lugar FOREIGN KEY (idDepClub) REFERENCES Club(idClub) ON DELETE;

/*ACCION REFERENCIAL DEPORTIVO*/
/*Al eliminar la siguiente FK(FK_Director_Deportivo)se deja null la relacion con el deportivo y director, por tanto no habrá ningún registro de él en el deportivo*/
ALTER TABLE Director ADD CONSTRAINT FK_Director_Deportivo FOREIGN KEY (idDirDep) REFERENCES Deportivo(idDepClub) ON DELETE;

/*Al eliminar la siguiente FK(FK_Jugador_Deportivo)se deja null la relacion con el deportivo y jugador, por tanto no habrá ningún registro de él en el jugador*/
ALTER TABLE Jugador ADD CONSTRAINT FK_Jugador_Deportivo FOREIGN KEY (idJugDep) REFERENCES Deportivo(idDepClub) ON DELETE;