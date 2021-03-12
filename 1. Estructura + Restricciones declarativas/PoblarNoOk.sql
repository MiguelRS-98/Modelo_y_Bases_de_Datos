/*POBLAR NoOK*/
/*POBLAR NoOK LUGAR*/
INSERT INTO LUGAR VALUES ('1651','Inglaterra','Londres');
/*No puede ser ingresado debido a que el idLlugar no es VARCHAR, es un NUMBER(5)*/

/*POBLAR NoOK TORNEO*/
INSERT INTO Torneo VALUES (00001,PremierLeague,1651,20,TO_DATE('09/08/2019','dd/mm/yyyy'),TO_DATE('17/05/2020','dd/mm/yyyy'));
/*No puede ser ingresado debido a que el nombreTor no lo esta tomando como VARCHAR(20)*/

/*POBLAR NoOK CLUB*/
INSERT INTO CLUB VALUES (1905555,'Chelsea',00001,1,24);
/*No puede ser ingresado debido a que el idClub es NUMBER(5), no es un NUMBER(7)*/

/*POBLAR NoOK ADMINISTRATIVO*/
INSERT INTO ADMINISTRATIVO VALUES (1905,01905,'Presidente','Roman',2);
/*No puede ingresar más de 5 atributos en este caso se agregó un sexto y no ejecuta*/