CREATE OR REPLACE PACKAGE PC_Club AS
    PROCEDURE Ad_club(xid_club IN NUMBER,xnombre_club IN VARCHAR,xestadio IN NUMBER,xliga IN NUMBER,xposicion IN VARCHAR,xcant_club IN NUMBER);
    PROCEDURE Ad_administrativo(xid_adminclub IN NUMBER,xid_admin IN NUMBER,xcargo IN VARCHAR,xnombre_admin IN VARCHAR);
    PROCEDURE Ad_deportivo(xid_dep IN NUMBER,xid_depclub IN NUMBER);
    PROCEDURE Ad_director(xid_director IN NUMBER,xnombre_director IN VARCHAR,xedad_director IN VARCHAR,xpais_director IN NUMBER,xcant_director IN NUMBER);
    PROCEDURE Ad_jugador(xid_jugador IN NUMBER,xnombre_jugador IN VARCHAR,xedad_jugador IN VARCHAR,xpais_jugador IN NUMBER,xdorsal_jugador IN NUMBER,xposicion_jugador IN VARCHAR,xcant_jugador IN NUMBER,xlesion_jugador IN VARCHAR);
    PROCEDURE Mod_deportivo(xid_dep IN NUMBER,xid_depclub IN NUMBER);
    PROCEDURE Mod_director(xid_director IN NUMBER,xnombre_director IN VARCHAR,xedad_director IN VARCHAR,xpais_director IN NUMBER,xcant_director IN NUMBER);
    PROCEDURE Mod_jugador(xid_jugador IN NUMBER,xedad_jugador IN VARCHAR,xpais_jugador IN NUMBER,xdorsal_jugador IN NUMBER,xposicion_jugador IN VARCHAR,xcant_jugador IN NUMBER,xlesion_jugador IN VARCHAR);
    PROCEDURE Mod_club(xid_club IN NUMBER,xestadio IN NUMBER,xliga IN NUMBER,xposicion IN VARCHAR,xcant_club IN NUMBER);
    PROCEDURE Mod_administrativo(xid_adminclub IN NUMBER,xcargo IN VARCHAR);
    PROCEDURE EL_jugador(xid_jugador IN NUMBER);
    PROCEDURE EL_club(xid_club IN NUMBER);
    PROCEDURE EL_director(xid_director IN NUMBER);
    
END PC_Estadio;
/

CREATE OR REPLACE PACKAGE PC_Torneo AS
    PROCEDURE Ad_torneo(xid_torneo IN NUMBER,xnombre_torneo IN VARCHAR,xid_lugartorneo IN NUMBER,xcant_Club IN NUMBER,xfecha_inicial IN DATE,xfecha_final IN DATE);
    PROCEDURE Ad_partido(xid_partido IN NUMBER,xid_club1 IN NUMBER,xid_estadio0 IN NUMBER,xid_arb0 IN NUMBER,xfecha_partido IN DATE);
    PROCEDURE Ad_tarjeta(xid_partido1 IN NUMBER,xid_jugador1 IN NUMBER,xcant_tarjetas IN NUMBER);
    PROCEDURE Ad_arbitro(xid_arbitro IN NUMBER,xnombre_arbitro IN VARCHAR,xedad_arbitro IN VARCHAR,xpais_arbitro in NUMBER);
    PROCEDURE Ad_gol(xid_partido2 IN NUMBER,xid_jugador2 IN NUMBER,xcant_goles IN NUMBER);
    PROCEDURE Mod_torneo(xid_torneo IN NUMBER,xfecha_inicial IN DATE,xfecha_final IN DATE);
    PROCEDURE Mod_partido(xid_partido IN NUMBER,xid_estadio0 IN NUMBER,xid_arb0 IN NUMBER,xfecha_partido IN DATE);
END PC_Torneo;
/

CREATE OR REPLACE PACKAGE PC_Estadio AS
    PROCEDURE Ad_Estadio(xidestadio IN NUMBER,xidlugar IN NUMBER,xnombre IN VARCHAR,xcapacidad IN NUMBER);
    PROCEDURE Mod_Estadio(xidestadio IN NUMBER,xcapacidad IN NUMBER);
    PROCEDURE El_Estadio(xidestadio IN NUMBER);
    
END PC_Estadio;
/

CREATE OR REPLACE PACKAGE PC_Lugar AS
    PROCEDURE Ad_Lugar(xid IN NUMBER,xPaisLugar IN VARCHAR,xCiudadLugar IN VARCHAR);
    PROCEDURE Mod_Lugar(xid IN NUMBER,xPaisLugar IN VARCHAR,xCiudadLugar IN VARCHAR);
    PROCEDURE El_Lugar(xid IN NUMBER);
    
END PC_Lugar;
/

