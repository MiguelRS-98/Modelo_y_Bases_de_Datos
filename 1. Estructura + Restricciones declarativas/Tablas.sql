/*CRUD VERDE*/

/*TABLA TORNEO*/
CREATE TABLE Torneo(
 idTorneo NUMBER(5) NOT NULL,
 nombreTorneo VARCHAR(20)NOT NULL,
 idLugarTor NUMBER(5) NOT NULL,
 cantClub NUMBER(5) NOT NULL,
 fechaInicial DATE NOT NULL,
 fechaFinal DATE NOT NULL
);


/*TABLA PARTIDO*/
CREATE TABLE Partido(
 idPartido NUMBER(5) NOT NULL,
 idClub1 NUMBER(5) NOT NULL,
 idEstadio0 NUMBER(5) NOT NULL,
 idArb0 NUMBER(5) NOT NULL,
 fechaPartido Date NOT NULL
);

/*TABLA ARBITRO*/
CREATE TABLE Arbitro(
 idArb NUMBER(5) NOT NULL,
 nombreArb VARCHAR(20) NOT NULL,
 edadArb VARCHAR(2) NOT NULL,
 paisArb NUMBER(5) NOT NULL
);

/*TABLA TARJETA*/
CREATE TABLE Tarjeta(
 idPartido1 NUMBER(5) NOT NULL,
 idJugador1 NUMBER(5) NOT NULL,
 cantTarjetas NUMBER(3)
);

/*TABLA GOL*/
CREATE TABLE Gol(
 idPartido2 NUMBER(5) NOT NULL,
 idJugador2 NUMBER(5) NOT NULL,
 cantGoles NUMBER(3)
);



/*CRUD AZUL*/


/*TABLA LUGAR*/
CREATE TABLE Lugar(
 idLugar NUMBER(5) NOT NULL,
 paisLugar VARCHAR(15) NOT NULL,
 ciudadLugar VARCHAR(15) NOT NULL
);


/*CRUD MORADO*/

/*TABLA ESTADIO*/
CREATE TABLE Estadio(
 idEstadio NUMBER(5) NOT NULL,
 idLugarEst NUMBER(5) NOT NULL,
 nombreEstadio VARCHAR(20) NOT NULL,
 capacidadEstadio NUMBER(5) NOT NULL
);


/*CRUD NARANJA*/


/*TABLA CLUB*/
CREATE TABLE Club(
idClub NUMBER(5) NOT NULL,
 nombreClub VARCHAR(20) NOT NULL,
 idEstadio0 NUMBER(5) NOT NULL,
 ligaParticipante NUMBER(5) NOT NULL,
 posicionTorneo VARCHAR(20) NOT NULL,
 cantJugador NUMBER(5) NOT NULL
);



/*TABLA ADMINISTRATIVO*/
CREATE TABLE Administrativo(
 idAdminClub NUMBER(5) NOT NULL,
 idAdmin NUMBER(5) NOT NULL,
 cargoAdmin VARCHAR(20) NOT NULL,
 nombreAdmin VARCHAR(20) NOT NULL
);

/*TABLA DEPORTIVO*/
CREATE TABLE Deportivo(
 idDepClub NUMBER(5) NOT NULL,
 idDep NUMBER(5) NOT NULL
);

/*TABLA DIRECTOR*/
CREATE TABLE Director(
 idDirector NUMBER(5) NOT NULL,
 nombreDirector VARCHAR(20) NOT NULL,
 edadDirector VARCHAR(2)NOT NULL,
 paisDirector NUMBER(5) NOT NULL,
 cantPartidosDirector NUMBER(5) NOT NULL
);

/*TABLA JUGADOR*/
CREATE TABLE Jugador(
 idJugador NUMBER(5) NOT NULL,
 nombreJugador VARCHAR(20) NOT NULL,
 edadJugador NUMBER(2) NOT NULL,
 paisJugador NUMBER(5) NOT NULL,
 dorsalJugador NUMBER(2) NOT NULL,
 posicionJugador VARCHAR(15) NOT NULL,
 cantPartidosJugador NUMBER(5) NOT NULL,
 lesionJugador VARCHAR(20) NOT NULL
);

