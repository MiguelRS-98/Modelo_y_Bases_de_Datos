/*POBLAR OK*/
/*POBLAR LUGAR*/
INSERT INTO LUGAR VALUES (1651,'Inglaterra','Londres');
INSERT INTO LUGAR VALUES (1593,'Italia','Roma');
INSERT INTO LUGAR VALUES (1586,'Alemania','Munich');
INSERT INTO LUGAR VALUES (1625,'Espa�a','Madrid');
INSERT INTO LUGAR VALUES (1726,'Francia','Paris');
INSERT INTO LUGAR VALUES (1813,'Bosnia','Sarajevo');
INSERT INTO LUGAR VALUES (1943,'Costa Rica','San Jos�');

/*POBLAR TORNEO*/
INSERT INTO TORNEO VALUES (00001,'PremierLeague',1651,20,TO_DATE('09/08/2019','dd/mm/yyyy'),TO_DATE('17/05/2020','dd/mm/yyyy'));
INSERT INTO TORNEO VALUES (00002,'SerieA',1651,20,TO_DATE('09/08/2019','dd/mm/yyyy'),TO_DATE('17/05/2020','dd/mm/yyyy'));
INSERT INTO TORNEO VALUES (00003,'Bundesliga',1651,20,TO_DATE('09/08/2019','dd/mm/yyyy'),TO_DATE('17/05/2020','dd/mm/yyyy'));
INSERT INTO TORNEO VALUES (00004,'Liga',1651,20,TO_DATE('09/08/2019','dd/mm/yyyy'),TO_DATE('17/05/2020','dd/mm/yyyy'));
INSERT INTO TORNEO VALUES (00005,'Ligue',1651,20,TO_DATE('09/08/2019','dd/mm/yyyy'),TO_DATE('17/05/2020','dd/mm/yyyy'));

/*POBLAR ESTADIO*/
INSERT INTO ESTADIO VALUES (1877,1651,'Stamford',41841);
INSERT INTO ESTADIO VALUES (1553,1593,'Olimpico',72700);
INSERT INTO ESTADIO VALUES (2005,1586,'Allianz',75024);
INSERT INTO ESTADIO VALUES (2017,1625,'Metropolitano',68456);
INSERT INTO ESTADIO VALUES (1897,1726,'Princes',48712);

/*POBLAR CLUB*/
INSERT INTO CLUB VALUES (1905,'Chelsea',1877,00001,1,24);
INSERT INTO CLUB VALUES (1927,'Roma',1553,00002,2,24);
INSERT INTO CLUB VALUES (1900,'Bayern',2005,00003,3,24);
INSERT INTO CLUB VALUES (1903,'Atletico',2017,00004,4,24);
INSERT INTO CLUB VALUES (1970,'PSG',1897,00005,5,24);

/*POBLAR ADMINISTRATIVO*/
INSERT INTO ADMINISTRATIVO VALUES (1905,01905,'Presidente','Roman');
INSERT INTO ADMINISTRATIVO VALUES (1927,01927,'Presidente','Pallotta');
INSERT INTO ADMINISTRATIVO VALUES (1900,01900,'Presidente','Uli');
INSERT INTO ADMINISTRATIVO VALUES (1903,01903,'Presidente','Cereso');
INSERT INTO ADMINISTRATIVO VALUES (1970,01970,'Presidente','Nasser');

/*POBLAR DEPORTIVO*/
INSERT INTO DEPORTIVO VALUES (1905,11905);
INSERT INTO DEPORTIVO VALUES (1927,11927);
INSERT INTO DEPORTIVO VALUES (1900,11900);
INSERT INTO DEPORTIVO VALUES (1903,11903);
INSERT INTO DEPORTIVO VALUES (1970,11970);

/*POBLAR DIRECTOR*/
INSERT INTO DIRECTOR VALUES (11905,'Lampard','40',1651,15);
INSERT INTO DIRECTOR VALUES (11900,'Hans','42',1586,1);

/*POBLAR JUGADOR*/
INSERT INTO JUGADOR VALUES (11927,'Dzeko','36',1813,9,'Delantero',19,'Si');
INSERT INTO JUGADOR VALUES (11903,'Koke','35',1625,6,'Medio',20,'No');
INSERT INTO JUGADOR VALUES (11970,'Keylor','28',1943,7,'Portero',11,'No');

/*POBLAR ARBITRO*/
INSERT INTO ARBITRO VALUES (01100,'Terry','43',1651);
INSERT INTO ARBITRO VALUES (02200,'Colina','45',1593);
INSERT INTO ARBITRO VALUES (03300,'Muller','40',1586);
INSERT INTO ARBITRO VALUES (04400,'Rodriguez','42',1625);
INSERT INTO ARBITRO VALUES (05500,'Pier','46',1726);

/*POBLAR PARTIDO*/
INSERT INTO PARTIDO VALUES (00100,1905,1877,01100,TO_DATE('09/05/2020','dd/mm/yyyy'));
INSERT INTO PARTIDO VALUES (00200,1927,1553,02200,TO_DATE('10/05/2020','dd/mm/yyyy'));
INSERT INTO PARTIDO VALUES (00300,1900,2005,03300,TO_DATE('11/05/2020','dd/mm/yyyy'));
INSERT INTO PARTIDO VALUES (00400,1903,2017,04400,TO_DATE('12/05/2020','dd/mm/yyyy'));
INSERT INTO PARTIDO VALUES (00500,1970,1897,05500,TO_DATE('13/05/2020','dd/mm/yyyy'));

/*POBLAR TARJETA*/
INSERT INTO TARJETA VALUES (00100,11927,0);
INSERT INTO TARJETA VALUES (00200,11903,2);
INSERT INTO TARJETA VALUES (00500,11970,1);

/*POBLAR GOL*/
INSERT INTO GOL VALUES (00200,11927,2);
INSERT INTO GOL VALUES (00400,11903,6);
INSERT INTO GOL VALUES (00500,11970,0);