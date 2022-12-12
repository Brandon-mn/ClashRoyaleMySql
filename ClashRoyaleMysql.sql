use clashroyale;
CREATE TABLE Jugador
(
	idJugador INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	codigo VARCHAR(8) NOT NULL,
	puntosEstelares VARCHAR (50) not null,
	experiencia VARCHAR (50) not null,
	estatus bit default 1 not null,
	idDesafio INT not null,
	idLibro INT not null,
	idClan INT not null,
	idTorneo INT not null,
	idPase INT not null,
	idCaminoTrofeo INT not null,
	idCaminoLeyenda INT not null
);
CREATE TABLE Registro
(
	idRegistro  INT auto_increment primary key,
	modalidad VARCHAR (50) NOT NULL,
	duracion VARCHAR(8) NOT NULL,
	estatus BIT DEFAULT 1 not null,
	idArena INT not null
  
);
#
CREATE TABLE CaminoTrofeo
(
	idCaminoTrofeo  INT auto_increment primary key,
	trofeos VARCHAR (50) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	recompensa VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null,
	idArena INT not null,
	idLiga INT not null
);
#
CREATE TABLE CaminoLeyenda
(
	idCaminoLeyenda  INT auto_increment primary key,
	trofeos VARCHAR (50) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	recompensa VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null,
	idArena INT not null
);
#
CREATE TABLE Liga
(
	idLiga  INT auto_increment primary key,
	coronas VARCHAR (50) NOT NULL,
	recompensa VARCHAR(50) NOT NULL,
	nombre VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null,
	idArena INT not null
);
#
CREATE TABLE Arena
(
	idArena  INT auto_increment primary key,
	tematica VARCHAR (50) NOT NULL,
	numero VARCHAR(8) NOT NULL,
	nombre VARCHAR (50) not null,
	rango VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null
);

#
CREATE TABLE Adorno
(
	idAdorno  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	tematica VARCHAR(8) NOT NULL,
	calidad VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Marco
(
	idMarco  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	calidad VARCHAR(50) NOT NULL,
	fondo VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Tvroyale
(
	idTvroyale  INT auto_increment primary key,
	jugador1 VARCHAR (50) NOT NULL,
	jugador2 VARCHAR(50) NOT NULL,
	reproducciones VARCHAR (10) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Clasificacionn
(
	idClasificacion  INT auto_increment primary key,
	medallas VARCHAR (50) NOT NULL,
	puesto VARCHAR(4) NOT NULL,
	reproducciones VARCHAR (10) not null,
	idJugador INT not null,
	estatus BIT DEFAULT 1 not null

);
#
CREATE TABLE Torneo
(
	idTorneo  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	duracion VARCHAR(4) NOT NULL,
	capacidad VARCHAR (10) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Cofre
(
	idCofre  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	cantidadOro VARCHAR(4) NOT NULL,
	cartas VARCHAR (10) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Pase
(
	idPase  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	temporada VARCHAR(4) NOT NULL,
	tematica VARCHAR (10) not null,
	estatus BIT DEFAULT 1 not null,
	idAspecto INT not null,
	idReaccion INT not null,
	idNivel INT not null
);
#
CREATE TABLE Nivel
(
	idNivel INT auto_increment primary key,
	numero VARCHAR (50) NOT NULL,
	recompensaRoyale VARCHAR(50) NOT NULL,
	recompensaGratis VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Tienda
(
	idTienda INT auto_increment primary key,
	oro VARCHAR (50) NOT NULL,
	gemas VARCHAR(50) NOT NULL,
	cantidad VARCHAR (50) not null,
	idCofre INT not null,
	idReaccion INT not null,
	idOferta INT not null,
	idCodigoRegalo INT not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Reaccion
(
	idReaccion INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	audio VARCHAR(50) NOT NULL,
	animacion VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Oferta
(
	idOferta INT auto_increment primary key,
	descripcion VARCHAR (50) NOT NULL,
	fechaVencimiento DATE not null,
	estatus BIT DEFAULT 1 not null

);
#
CREATE TABLE Pago
(
	idPago INT auto_increment primary key,
	numeroTarjeta VARCHAR (50) NOT NULL,
	fechaVencimiento DATE not null,
	nombre VARCHAR (50) not null,
	apellidPaterno VARCHAR (50) not null,
	apellidoMaterno VARCHAR (50) not null,
	codigoPostal VARCHAR (5) not null,
	correo VARCHAR (50) not null,
	estatus BIT DEFAULT 1 not null

);
#
CREATE TABLE CodigoRegalo 
(
	idCodigoRegalo INT auto_increment primary key,
	codigo VARCHAR (50) NOT NULL,
	credito VARCHAR (50)not null,
	fechaVencimiento  DATE not null, 
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Desafio
(
	idDesafio INT auto_increment primary key,
	duracion VARCHAR (50) NOT NULL,
	victorias VARCHAR (50)not null,
	nombre  VARCHAR (50)not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Mazo
(
	idMazo INT auto_increment primary key,
	nivel VARCHAR (50) NOT NULL,
	tipo VARCHAR (50)not null,
	coste VARCHAR (50)not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Maestro
(
	idMaestro INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	nivel VARCHAR (50)not null,
	dificultad VARCHAR (50)not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Cartaa
(
	idCartaa INT auto_increment primary key,
	calidad VARCHAR (50) NOT NULL,
	descripcion VARCHAR (50)not null,
	idMaestria int NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Echizo
(
	idEchizo INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	dañoTorres VARCHAR(50) NOT NULL,
	ancho VARCHAR (50)not null,
	alcance VARCHAR (50)not null,
	coste VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null,
	idCarta int NOT NULL
);
#
CREATE TABLE Tropa
(
	idTropa INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	vida VARCHAR(50) NOT NULL,
	velocidad VARCHAR (50)not null,
	daño VARCHAR (50)not null,
	alcance VARCHAR (50) NOT NULL,
	objetivo VARCHAR (50) NOT NULL,
	coste VARCHAR (50) NOT NULL,
	idCarta int NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Estructura 
(
	idEstructura INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	vida VARCHAR(50) NOT NULL,
	velocidad VARCHAR (50)not null,
	alcance VARCHAR (50) NOT NULL,
	objetivo VARCHAR (50) NOT NULL,
	coste VARCHAR (50) NOT NULL,
	idCarta int NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Campeon 
(
	idCampeon INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	vida VARCHAR(50) NOT NULL,
	velocidad VARCHAR (50)not null,
	alcance VARCHAR (50) NOT NULL,
	daño VARCHAR (50) NOT NULL,
	coste VARCHAR (50) NOT NULL,
	idCarta int NOT NULL,
	idHabilidad int NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Habilidad 
(
	idHabilidad  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	duracion VARCHAR(50) NOT NULL,
	coste VARCHAR (50)not null,
	recarga VARCHAR (50) NOT NULL,
	descripcion VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Estadistica  
(
	idEstadistica INT auto_increment primary key,
	victorias VARCHAR (50) NOT NULL,
	tresCoronas VARCHAR(50) NOT NULL,
	donaciones VARCHAR (50)not null,
	coleccion VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Logro  
(
	idLogro INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	dificultad VARCHAR(50) NOT NULL,
	descripcion VARCHAR (50)not null, 
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Comodin  
(
	idComodin INT auto_increment primary key,
	almacen VARCHAR (50) NOT NULL,
	maximo VARCHAR(50) NOT NULL,
	uso VARCHAR (50)not null, 
	calidad VARCHAR (50)not null, 
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Libro  
(
    idLibro INT auto_increment primary key, 
	calidad VARCHAR (50) NOT NULL,
	uso VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Mision  
(
	idMision INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	tarea VARCHAR(50) NOT NULL,
	idBonus int NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Bonus  
(
    idBonus INT auto_increment primary key,
	diario VARCHAR (50) NOT NULL,
	semanal VARCHAR(50) NOT NULL,
	experiencia VARCHAR(50) NOT NULL,
	recompensa VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Supercell  
(
    idSupercell INT auto_increment primary key,
	correo VARCHAR (50) NOT NULL,
	codigo VARCHAR(50) NOT NULL,
	juegos VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Empleado  
(
    idEmpleado INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	apellidoPaterno VARCHAR(50) NOT NULL,
	apellidoMaterno VARCHAR(50) NOT NULL,
	pais VARCHAR (50) NOT NULL,
	calle VARCHAR (50) NOT NULL,
	colonia VARCHAR (50) NOT NULL,
	municipo VARCHAR (50) NOT NULL,
	idPuesto int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Puesto  
(
    idPuesto INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	sueldo VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE CreadorContenido  
(
    idCreadorContenido INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	suscriptores VARCHAR(50) NOT NULL,
	codigo VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Clan  
(
    idClan INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	trofeos VARCHAR(50) NOT NULL,
	miembros VARCHAR(50) NOT NULL,
	codigo VARCHAR(50) NOT NULL,
	idModoJuego int Not null,
	idMercader int Not null,
	idLigClan int Not null,
	idPedido int Not null,
	idIntercambio int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Guerra  
(
    idGuerra INT auto_increment primary key,
	trofeos VARCHAR (50) NOT NULL,
	puesto VARCHAR(50) NOT NULL,
	ataques VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Botin  
(
    idBotin INT auto_increment primary key,
	oro VARCHAR (50) NOT NULL,
	cartas VARCHAR(50) NOT NULL,
	comodines VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Mercader  
(
    idMercader  INT auto_increment primary key,
	ficha VARCHAR (50) NOT NULL,
	opcion VARCHAR(50) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Solicitud  
(
    idSolicitud  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	trofeos VARCHAR(50) NOT NULL, 
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE LigClan  
(
    idLigaClan  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	rango VARCHAR(50) NOT NULL, 
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE ModoJuego  
(
    idModoJuego  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	dificultad VARCHAR(50) NOT NULL,
	descripcion VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Intrercambio  
(
    idIntercambio  INT auto_increment primary key,
	calidad  VARCHAR (50) NOT NULL,
	fecha DATE not null,
	cantidad VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Pedido  
(
    idPedido  INT auto_increment primary key,
	tiempo VARCHAR (50) NOT NULL,
	calidad DATE not null,
	cantidad VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Donacion  
(
    idDonacion  INT auto_increment primary key,
	cantidad VARCHAR (50) NOT NULL,
	calidad DATE not null,
	codigo VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Maestria   
(
    idMaestria  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	dificultad  VARCHAR (50) NOT NULL,
	calidad VARCHAR (50) NOT NULL,
	experiencia VARCHAR (50) NOT NULL,
	definicion VARCHAR (50) NOT NULL,
	recompensa VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE Aspecto   
(
    idAspecto  INT auto_increment primary key,
	nombre VARCHAR (50) NOT NULL,
	ruta  VARCHAR (50) NOT NULL,
	temporada VARCHAR (50) NOT NULL,
	calidad VARCHAR (50) NOT NULL,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE RegistroJugador   
(
    idRegistroJugador INT auto_increment primary key,
	ganador VARCHAR (50) NOT NULL,
	fecha  VARCHAR (50) NOT NULL,
	idRegistro int Not null,
	idJugador int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE SupercellEmpleado   
(
    idSupercellEmpleado INT auto_increment primary key,
	idSupercell int Not null,
	idEmpleado int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE SupercellCreadoConrtenido   
(
    idSupercellCreadoConrtenido INT auto_increment primary key,
	idSupercell int Not null,
	idCreadorContenido int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE ClanSolicitud   
(
    idClanSolicitud INT auto_increment primary key,
	fecha DATE not null,
	idClan int Not null,
	idSolicitud int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE ClanGuerra	   
(
    idClanGuerra INT auto_increment primary key,
	duracion DATE not null,
	idClan int Not null,
	idGuerra int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE MisionJugador	   
(
    idMisionJugador INT auto_increment primary key,
	idMision int Not null,
	idJugador int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE LibroJugador	   
(
    idLibroJugador INT auto_increment primary key,
	idLibro int Not null,
	idJugador  int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE JugadorComodin	   
(
    idJugadorComodin INT auto_increment primary key,
	idJugador int Not null,
	idComodin int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE LogroJugador	   
(
    idLogroJugador INT auto_increment primary key,
	idLogro int Not null,
	idJugador int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE MaestroJugador	   
(
    idMaestroJugador INT auto_increment primary key,
	idMaestro int Not null,
	idJugador int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE JugadorMazo	   
(
    idJugadorMazo INT auto_increment primary key,
	idJugador int Not null,
	idMazo int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE PaseTienda	   
(
    idPaseTienda INT auto_increment primary key,
	idPase int Not null,
	idTienda int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE JugadorCofre	   
(
    idJugadorCofre INT auto_increment primary key,
	idJugador int Not null,
	idCofre int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE TiendaPago
(
    idTiendaPago INT auto_increment primary key,
	idTienda int Not null,
	idPago int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE JugadorMarco
(
    idJugadorMarco INT auto_increment primary key,
	idJugador int Not null,
	idMarco int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE JugadorTvroyale
(
    idJugadorTvroyale INT auto_increment primary key,
	idJugador int Not null,
	idTvroyale int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE JugadorAdorno
(
    idJugadorAdorno INT auto_increment primary key,
	idJugador int Not null,
	idAdorno int Not null,
	estatus BIT DEFAULT 1 not null
);
#
CREATE TABLE MazoCarta
(
    idMazoCarta INT auto_increment primary key,
	idMazo int Not null,
	idCarta int Not null,
	estatus BIT DEFAULT 1 not null
);

#Llaves Foraneas
#JUGADOR
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorDesafio FOREIGN KEY (idDesafio) REFERENCES Desafio (idDesafio);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorLibro FOREIGN KEY (idLibro) REFERENCES Libro (idLibro);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorClan FOREIGN KEY (idCLan) REFERENCES Clan (idCLan);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorTorneo FOREIGN KEY (idTorneo) REFERENCES Torneo (idTorneo);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorPase  FOREIGN KEY (idPase ) REFERENCES Pase  (idPase);
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorCaminoTrofeo  FOREIGN KEY (idCaminoTrofeo) REFERENCES CaminoTrofeo (idCaminoTrofeo );
ALTER TABLE Jugador ADD CONSTRAINT FK_JugadorCaminoLeyenda   FOREIGN KEY (idCaminoLeyenda ) REFERENCES CaminoLeyenda  (idCaminoLeyenda  );
#Registro
ALTER TABLE Registro ADD CONSTRAINT FK_RegistroArena FOREIGN KEY (idArena) REFERENCES Arena (idArena);
#CaminoTrofeo
ALTER TABLE CaminoTrofeo ADD CONSTRAINT FK_CaminoTrofeoArena FOREIGN KEY (idArena) REFERENCES Arena (idArena);
ALTER TABLE CaminoTrofeo ADD CONSTRAINT FK_CaminoTrofeoLiga FOREIGN KEY (idLiga ) REFERENCES Liga  (idLiga );
#CaminoLeyenda
ALTER TABLE CaminoLeyenda ADD CONSTRAINT FK_CaminoLeyendaArena FOREIGN KEY (idArena) REFERENCES Arena (idArena);
#Pase
ALTER TABLE Pase ADD CONSTRAINT FK_PaseAspecto  FOREIGN KEY (idAspecto ) REFERENCES Aspecto  (idAspecto );
ALTER TABLE Pase ADD CONSTRAINT FK_PaseReaccion  FOREIGN KEY (idReaccion) REFERENCES Reaccion   (idReaccion  );
ALTER TABLE Pase ADD CONSTRAINT FK_PaseNivel  FOREIGN KEY (idNivel) REFERENCES Nivel  (idNivel );
#Tienda
ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaCodre  FOREIGN KEY (idCofre  ) REFERENCES Cofre   (idCofre  );
ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaReaccion  FOREIGN KEY (idReaccion) REFERENCES Reaccion   (idReaccion  );
ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaOferta FOREIGN KEY (idOferta ) REFERENCES Oferta   (idOferta  );
ALTER TABLE Tienda ADD CONSTRAINT FK_TiendaCodigoRegalo FOREIGN KEY (idCodigoRegalo  ) REFERENCES CodigoRegalo    (idCodigoRegalo   );
#Echizo
ALTER TABLE Echizo ADD CONSTRAINT FK_EchizoCarta  FOREIGN KEY (idCarta) REFERENCES Cartaa (idCartaa);
#Tropa
ALTER TABLE Tropa ADD CONSTRAINT FK_TropaCarta   FOREIGN KEY (idCarta  ) REFERENCES Cartaa    (idCartaa  );
#Tropa
ALTER TABLE Estructura  ADD CONSTRAINT FK_EstructuraCarta  FOREIGN KEY (idCarta  ) REFERENCES Cartaa (idCartaa  );
#Tropa
ALTER TABLE Campeon   ADD CONSTRAINT FK_CampeonCarta  FOREIGN KEY (idCarta) REFERENCES Cartaa  (idCartaa );
ALTER TABLE Campeon   ADD CONSTRAINT FK_CampeonHabilidad FOREIGN KEY (idHabilidad) REFERENCES Habilidad  (idHabilidad);
#Mision
ALTER TABLE Mision ADD CONSTRAINT FK_MisionBonus FOREIGN KEY (idBonus  ) REFERENCES Bonus (idBonus);
#Empleado
ALTER TABLE Empleado  ADD CONSTRAINT FK_EmpleadoPuesto  FOREIGN KEY (idPuesto ) REFERENCES Puesto (idPuesto);
#Clan
ALTER TABLE Clan  ADD CONSTRAINT FK_ClanModoJuego FOREIGN KEY (idModoJuego   ) REFERENCES ModoJuego  (idModoJuego   );
ALTER TABLE Clan  ADD CONSTRAINT FK_ClanMercader  FOREIGN KEY (idMercader  ) REFERENCES Mercader (idMercader  );
ALTER TABLE Clan  ADD CONSTRAINT FK_ClanLigClan   FOREIGN KEY (idLigClan ) REFERENCES LigClan  (idLigaClan );
ALTER TABLE Clan  ADD CONSTRAINT FK_ClanPedido    FOREIGN KEY (idPedido  ) REFERENCES Pedido   (idPedido  );
ALTER TABLE Clan  ADD CONSTRAINT FK_ClanIntercambio     FOREIGN KEY (idIntercambio ) REFERENCES Intrercambio (idIntercambio);
#RegistroJugador
ALTER TABLE RegistroJugador  ADD CONSTRAINT FK_RegistroJugadorRegistro FOREIGN KEY (idRegistro) REFERENCES Registro (idRegistro);
ALTER TABLE RegistroJugador  ADD CONSTRAINT FK_RegistroJugadorJugador FOREIGN KEY (idJugador) REFERENCES Jugador (idJugador);
#SupercellEmpleado   
ALTER TABLE SupercellEmpleado ADD CONSTRAINT FK_SupercellEmpleadoSupercell FOREIGN KEY (idSupercell) REFERENCES Supercell (idSupercell);
ALTER TABLE SupercellEmpleado ADD CONSTRAINT FK_SupercellEmpleadoEmpleado FOREIGN KEY (idEmpleado ) REFERENCES Empleado (idEmpleado );
#SupercellCreadoConrtenido      
ALTER TABLE SupercellCreadoConrtenido ADD CONSTRAINT FK_SupercellCreadoConrtenidoSupercell  FOREIGN KEY (idSupercell) REFERENCES Supercell (idSupercell);
ALTER TABLE SupercellCreadoConrtenido ADD CONSTRAINT FK_SupercellCreadoConrtenidoCreadorContenido  FOREIGN KEY (idCreadorContenido  ) REFERENCES CreadorContenido  (idCreadorContenido  );
#ClanSolicitud         
ALTER TABLE ClanSolicitud  ADD CONSTRAINT FK_ClanSolicitudClan  FOREIGN KEY (idClan ) REFERENCES Clan  (idClan );
ALTER TABLE ClanSolicitud  ADD CONSTRAINT FK_ClanSolicitudSolicitud  FOREIGN KEY (idSolicitud   ) REFERENCES Solicitud   (idSolicitud   );
#ClanGuerra	            
ALTER TABLE ClanGuerra	ADD CONSTRAINT FK_ClanGuerraGuerra  FOREIGN KEY (idGuerra) REFERENCES Guerra   (idGuerra  );
ALTER TABLE ClanGuerra  ADD CONSTRAINT FK_ClanGuerraClan  FOREIGN KEY (idClan ) REFERENCES Clan    (idClan);
#LibroJugador	   	            
ALTER TABLE LibroJugador ADD CONSTRAINT FK_LibroJugadorLibro	FOREIGN KEY (idLibro ) REFERENCES Libro (idLibro);
ALTER TABLE LibroJugador ADD CONSTRAINT FK_LibroJugadorJugador FOREIGN KEY (idJugador ) REFERENCES Jugador (idJugador);
#MisionJugador
ALTER TABLE MisionJugador  ADD CONSTRAINT FK_MisionJugadorMision  FOREIGN KEY (idMision  ) REFERENCES Mision (idMision );
ALTER TABLE MisionJugador  ADD CONSTRAINT FK_MisionJugadorJugador FOREIGN KEY (idJugador ) REFERENCES Jugador (idJugador);
#JugadorComodin
ALTER TABLE JugadorComodin  ADD CONSTRAINT FK_JugadorComodinJugador FOREIGN KEY (idJugador ) REFERENCES Jugador (idJugador);
ALTER TABLE JugadorComodin  ADD CONSTRAINT FK_JugadorComodinComodin FOREIGN KEY (idComodin) REFERENCES Comodin (idComodin);
#JugadorComodin
ALTER TABLE LogroJugador  ADD CONSTRAINT FK_LogroJugadoLogro FOREIGN KEY (idLogro  ) REFERENCES Logro  (idLogro );
ALTER TABLE LogroJugador  ADD CONSTRAINT FK_LogroJugadorJugador FOREIGN KEY (idJugador ) REFERENCES Jugador  (idJugador );
#MaestroJugador
ALTER TABLE MaestroJugador  ADD CONSTRAINT FK_MaestroJugadorMaestro FOREIGN KEY (idMaestro) REFERENCES Maestro  (idMaestro );
ALTER TABLE MaestroJugador  ADD CONSTRAINT FK_MaestroJugadorJugador FOREIGN KEY (idJugador ) REFERENCES Jugador  (idJugador );
#JugadorMazo
ALTER TABLE JugadorMazo  ADD CONSTRAINT FK_JugadorMazoJugador FOREIGN KEY (idJugador) REFERENCES Jugador  (idJugador );
ALTER TABLE JugadorMazo  ADD CONSTRAINT FK_JugadorMazoMazo FOREIGN KEY (idMazo ) REFERENCES Mazo  (idMazo );
#PaseTienda
ALTER TABLE PaseTienda  ADD CONSTRAINT FK_PaseTiendaPase FOREIGN KEY (idPase) REFERENCES Pase(idPase);
ALTER TABLE PaseTienda  ADD CONSTRAINT FK_PaseTiendaTienda FOREIGN KEY (idTienda ) REFERENCES Tienda  (idTienda );
#JugadorCofre
ALTER TABLE JugadorCofre  ADD CONSTRAINT FK_JugadorCofreJugador FOREIGN KEY (idJugador) REFERENCES Jugador  (idJugador);
ALTER TABLE JugadorCofre  ADD CONSTRAINT FK_JugadorCofreCofre FOREIGN KEY (idCofre ) REFERENCES Cofre  (idCofre );
#TiendaPago
ALTER TABLE TiendaPago  ADD CONSTRAINT FK_TiendaPagoTienda FOREIGN KEY (idTienda) REFERENCES Tienda  (idTienda);
ALTER TABLE TiendaPago  ADD CONSTRAINT FK_TiendaPagoPago FOREIGN KEY (idPago ) REFERENCES Pago  (idPago );
#JugadorMarco
ALTER TABLE JugadorMarco ADD CONSTRAINT FK_JugadorMarcoJugador  FOREIGN KEY (idJugador) REFERENCES Jugador  (idJugador);
ALTER TABLE JugadorMarco ADD CONSTRAINT FK_JugadorMarcoMarco FOREIGN KEY (idMarco ) REFERENCES Marco  (idMarco );
#JugadorTvroyale
ALTER TABLE JugadorTvroyale ADD CONSTRAINT FK_JugadorTvroyaleJugador  FOREIGN KEY (idJugador) REFERENCES Jugador  (idJugador);
ALTER TABLE JugadorTvroyale ADD CONSTRAINT FK_JugadorTvroyaleTvroyale FOREIGN KEY (idTvroyale) REFERENCES Tvroyale (idTvroyale);
#JugadorAdorno
ALTER TABLE JugadorAdorno ADD CONSTRAINT FK_JugadorAdornoJugador  FOREIGN KEY (idJugador) REFERENCES Jugador  (idJugador);
ALTER TABLE JugadorAdorno ADD CONSTRAINT FK_JugadorAdornoAdorno FOREIGN KEY (idAdorno ) REFERENCES Adorno  (idAdorno );
#MazoCarta
ALTER TABLE MazoCarta ADD CONSTRAINT FK_MazoCartaMazo  FOREIGN KEY (idMazo) REFERENCES Mazo  (idMazo);
ALTER TABLE MazoCarta ADD CONSTRAINT FK_MazoCartaCarta FOREIGN KEY (idCarta) REFERENCES Cartaa  (idCartaa);
#CartaMaestria;
ALTER TABLE Cartaa ADD CONSTRAINT FK_CartaaMaestria  FOREIGN KEY (idMaestria) REFERENCES Maestria  (idMaestria);

#Clasificacion
CREATE INDEX IX_Pago ON Pago (idPago);
CREATE INDEX IX_Mazo ON Mazo (idMazo);
CREATE INDEX IX_Desafio ON Desafio(idDesafio);
CREATE INDEX IX_Jugador ON Jugador(idJugador);
CREATE INDEX IX_Registro ON Registro(idRegistro);
CREATE INDEX IX_CaminoTrofeo ON CaminoTrofeo(idCaminoTrofeo);
CREATE INDEX IX_Liga ON Liga(idLiga);
CREATE INDEX IX_Arena ON Arena(idArena);
CREATE INDEX IX_Adorno ON Adorno(idAdorno);
CREATE INDEX IX_Marco ON Marco(idMarco);
CREATE INDEX IX_Tvroyale ON Tvroyale(idTvroyale);
CREATE INDEX IX_Clasificacionn ON Clasificacionn(idClasificacion);
CREATE INDEX IX_Torneo ON Torneo(idTorneo);
CREATE INDEX IX_Cofre ON Cofre(idCofre);
CREATE INDEX IX_Pase ON Pase(idPase);
CREATE INDEX IX_Nivel ON Nivel(idNivel);
CREATE INDEX IX_Tienda ON Tienda(idTienda);
CREATE INDEX IX_Reaccion ON Reaccion(idReaccion);
CREATE INDEX IX_Oferta ON Oferta(idOferta);
CREATE INDEX IX_Carta ON Cartaa(idCartaa);
CREATE INDEX IX_Echizo ON Echizo(idEchizo);
CREATE INDEX IX_Tropa ON Tropa(idTropa);
CREATE INDEX IX_Estructura ON Estructura(idEstructura);
CREATE INDEX IX_Campeon ON Campeon(idCampeon);
CREATE INDEX IX_Habilidad ON Habilidad(idHabilidad);
CREATE INDEX IX_Estadistica ON Estadistica(idEstadistica);
CREATE INDEX IX_Logro ON Logro(idLogro);
CREATE INDEX IX_Comodin ON Comodin(idComodin);
CREATE INDEX IX_Libro ON Libro(idLibro);
CREATE INDEX IX_Mision ON Mision(idMision);
CREATE INDEX IX_Bonus  ON Bonus(idBonus);
CREATE INDEX IX_Supercell ON Supercell(idSupercell);
CREATE INDEX IX_Empleado ON Empleado (idEmpleado);
CREATE INDEX IX_Puesto ON Puesto (idPuesto);
CREATE INDEX IX_CreadorContenido ON CreadorContenido (idCreadorContenido);
CREATE INDEX IX_Clan ON Clan (idClan);
CREATE INDEX IX_Guerra ON Guerra (idGuerra);
CREATE INDEX IX_Botin ON Botin (idBotin);
CREATE INDEX IX_Mercader ON Mercader (idMercader);
CREATE INDEX IX_LigClan ON LigClan (idLigaClan);
CREATE INDEX IX_ModoJuego ON ModoJuego (idModoJuego);
CREATE INDEX IX_Intrercambio ON Intrercambio (idIntercambio);
CREATE INDEX IX_Donacion ON Donacion (idDonacion);
CREATE INDEX IX_Maestria ON Maestria (idMaestria);
CREATE INDEX IX_Aspecto ON Aspecto (idAspecto);
CREATE INDEX IX_RegistroJugador ON RegistroJugador (idRegistroJugador);
CREATE INDEX IX_SupercellEmpleado ON SupercellEmpleado (idSupercellEmpleado);
CREATE INDEX IX_SupercellCreadoConrtenido ON SupercellCreadoConrtenido (idSupercellCreadoConrtenido);
CREATE INDEX IX_ClanSolicitud ON ClanSolicitud (idClanSolicitud);
CREATE INDEX IX_ClanGuerra ON ClanGuerra (idClanGuerra);
CREATE INDEX IX_MisionJugador ON MisionJugador(idMisionJugador);
CREATE INDEX IX_LibroJugador ON LibroJugador(idLibroJugador);
CREATE INDEX IX_JugadorComodin ON JugadorComodin(idJugadorComodin);
CREATE INDEX IX_LogroJugador ON LogroJugador(idLogroJugador);
CREATE INDEX IX_MaestroJugador ON MaestroJugador(idMaestroJugador);
CREATE INDEX IX_JugadorMazo ON JugadorMazo(idJugadorMazo);
CREATE INDEX IX_PaseTienda ON PaseTienda(idPaseTienda);
CREATE INDEX IX_JugadorCofre ON JugadorCofre(idJugadorCofre);
CREATE INDEX IX_TiendaPago ON TiendaPago (idTiendaPago);
CREATE INDEX IX_JugadorMarco ON JugadorMarco(idJugadorMarco);
CREATE INDEX IX_JugadorTvroyale ON JugadorTvroyale(idJugadorTvroyale);
CREATE INDEX IX_JugadorAdorno ON JugadorAdorno (idJugadorAdorno);
 
INSERT INTO Arena(tematica, numero, nombre, rango) values ( 'bosque','1','inicial','0-200');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('fuego','2','volcan','200-400');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('hielo','3','montaña','400-600');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('magia','4','caldero','600-800');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('selva','5','fortaleza','600-800');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('mina','6','mina','800-1000');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('dundes','7','estadio duende','1000-1200');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('pekka','8','fortaleza del pekka','1200-1400');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('electricidad','9','electrovalle','1400-1600');
INSERT INTO Arena(tematica, numero, nombre, rango) values ('real','10','palacio','1600-1800');
SELECT *FROM Arena;
UPDATE arena set tematica= 'legendaria' WHERE idArena =4;
DELETE FROM arena WHERE idArena = 1;
#sin el where borra todo;
INSERT INTO arena(tematica, numero, nombre, rango) values ('real','10','palacio','1600-1800');
SELECT *FROM Arena;

#Liga
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('4','100 oro','bronce 1','2');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('5','100 oro','bronce 2','2');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('6','100 oro','bronce 3','3');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('7','100 oro','plata 1','4');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('8','100 oro','plata 2','5');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('9','100 oro','plata 3','6');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('10','100 oro','diamante 1','7');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('11','100 oro','diamante 2','8');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('12','100 oro','diamante 3','9');
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('13','100 oro','Maestro 1','10');

UPDATE Liga set recompensa= '500 oro' WHERE idLiga =10;
DELETE FROM Liga WHERE idLiga = 1;
#sin el where borra todo
INSERT INTO Liga(coronas, recompensa, nombre, idArena) values ('14','100 oro','Maestro 2','11');
SELECT *FROM Liga;


#Registro
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','5' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','4' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','4' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','2 minuto','3' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','5' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','6' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','3 minuto','8' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','8' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','4 minuto','5' );
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','2' );
UPDATE Registro set modalidad= 'muertte subita' WHERE idRegistro =10;
DELETE FROM Registro WHERE idRegistro = 1;
#sin el where borra todo
INSERT INTO Registro(modalidad, duracion, idArena) values ('batalla','1 minuto','2' );
SELECT *FROM Registro;

#Adorno
INSERT INTO Adorno(nombre, tematica, calidad) values ('kung fu monje','templo','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('barbaro bailarin','baile','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('esqueelteos','terror','normal' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('monta puerco','valle','epico' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('dragon','fuego','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('monje','templo','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('espiritu fuego','lava','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('kung ','templo','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values (' fu','templo','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('kung fu monje','templo','mitica' );
INSERT INTO Adorno(nombre, tematica, calidad) values ('arquera','GUERRA','especial' );
SELECT *FROM Adorno;
UPDATE Adorno set calidad= 'legendaria' WHERE idAdorno =4;
DELETE FROM Adorno WHERE idAdorno = 1;
#sin el where borra todo
INSERT INTO Adorno(nombre, tematica, calidad) values ('arquera','ninguna','especial' );
SELECT *FROM Adorno;

INSERT INTO Marco(nombre, calidad, fondo) values ('hojas','mitica','arboles' );
INSERT INTO Marco(nombre, calidad, fondo) values ('fuego','mitica','volcan' );
INSERT INTO Marco(nombre, calidad, fondo) values ('hielo','especial','montaña' );
INSERT INTO Marco(nombre, calidad, fondo) values ('murcielagos','mitica','cueva' );
INSERT INTO Marco(nombre, calidad, fondo) values ('espiritus','mitica','magia' );
INSERT INTO Marco(nombre, calidad, fondo) values ('pixelart','legendaria','pueblo' );
INSERT INTO Marco(nombre, calidad, fondo) values ('hallowen','mitica','brujas' );
INSERT INTO Marco(nombre, calidad, fondo) values ('hojas','mitica','espceial' );
INSERT INTO Marco(nombre, calidad, fondo) values ('hojas','mitica','espceial' );
INSERT INTO Marco(nombre, calidad, fondo) values ('hojas','mitica','espceial' );

SELECT *FROM Marco;
UPDATE Marco set calidad= 'legendaria' WHERE idMarco =2;
DELETE FROM Marco WHERE idMarco = 1;
#sin el where borra todo;
INSERT INTO Marco(nombre, calidad, fondo) values ('hojas','mitica','espceial' );
SELECT *FROM Marco;

#TvRoyale
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('gil','YAHIR','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','milton','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('nose','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pepe','marcos','1123213' );

SELECT *FROM Tvroyale;
UPDATE Tvroyale set reproducciones = '123413' WHERE idTvroyale =4;
DELETE FROM Tvroyale WHERE idTvroyale = 1;
#sin el where borra todo
INSERT INTO Tvroyale(jugador1, jugador2, reproducciones) values ('pewepe','madsfgfrcos','1123213' );
SELECT *FROM Tvroyale;

#Cofre
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de plata','1233','1231' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de oro','1234','545' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de madera','6547','445' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de plata','1233','1231' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre magico ','4332','32424' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de super magico','4234','12334241' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de gigante','2443','12334241' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de rayo','334','123' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de reyaja','4334','189231' );
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de plata','1233','1231' );

SELECT *FROM Cofre;
UPDATE Cofre set nombre = 'fortuna' WHERE idCofre = 3;
DELETE FROM Cofre WHERE idCofre = 10;
#sin el where borra todo
INSERT INTO Cofre(nombre, cantidadOro, cartas) values ('cofre de rey','3244','189231' );
SELECT *FROM Cofre;


#Reaccion
INSERT INTO Reaccion(nombre, audio, animacion) values ('esqueleto','choque','golpe de 2 esqueletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('esqueleto','choerque','goldfspe de 2 esquesdfletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('esqueleto23','ch34que','golpe de 2 esqueletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('esque32rewleto','choqerue','golpe rede 2 esqueletrtos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('esquelesfdo','choerque','goelrpe de 2 esrrequeletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('eserwqueleto','choqrerue','golpe de 2 esquelerertos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('rey','choque','golpe de 2 esqueletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('nose','choque','golpe de 2 esqueletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('esqueleto','choque','golpe ewr 2 esqueletos' );
INSERT INTO Reaccion(nombre, audio, animacion) values ('apruebeme','choque','golewrewpe de 2 esqueletos' );
SELECT *FROM Reaccion;
UPDATE Reaccion set nombre = 'erwrew' WHERE idReaccion = 3;
DELETE FROM Reaccion WHERE idReaccion = 4;
#sin el where borra todo
INSERT INTO Reaccion(nombre, audio, animacion) values ('apruebemex2','choeweque','goewelewrewpewe de 2 esqewueletos' );
SELECT *FROM Reaccion;


#Oferta
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('2 cartas legendarias','2022-1-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('3 cartas legendarias','2022-1-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('3 cartas legendarias','2022-1-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('4 cartas legendarias','2022-1-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('5 cartas legendarias','2022-6-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('6 cartas legendarias','2022-6-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('7 cartas legendarias','2022-2-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('8 cartas legendarias','2022-1-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('9 cartas legendarias','2022-2-12');
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('10 cartas legendarias','2022-8-12');
SELECT *FROM Oferta;
UPDATE Oferta set fechaVencimiento = '2022-8-12' WHERE idOferta = 3;
DELETE FROM Oferta WHERE idOferta = 4;
#sin el where borra todo
INSERT INTO Oferta(descripcion, fechaVencimiento) values ('1 cartas legendarias','2022-6-12');
SELECT *FROM Oferta;

#Torneo
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo1','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo10','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo2','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo3','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo4','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo5','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo6','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo7','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo8','10','100');
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo9','10','100');
SELECT *FROM Torneo;
UPDATE Torneo set capacidad = '122' WHERE idTorneo = 3;
DELETE FROM Torneo WHERE idTorneo = 4;
#sin el where borra todo
INSERT INTO Torneo(nombre, duracion, capacidad) values ('torneo22','10','100');
SELECT *FROM Torneo;


#CodigoRegalo
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasdsd33312','1200','2022-8-12');
SELECT *FROM CodigoRegalo;
UPDATE CodigoRegalo set credito = '12222' WHERE idCodigoRegalo = 3;
DELETE FROM CodigoRegalo WHERE idCodigoRegalo = 4;
#sin el where borra todo
INSERT INTO CodigoRegalo(codigo, credito, fechaVencimiento) values ('12ffsasFdsd33312','13232','2022-8-12');
SELECT *FROM CodigoRegalo;


#Pago
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno, codigoPostal, correo)
values ('123123123','2022-8-12','nombre1', 'apellidoP1', 'apellidoM1','25870','correo1');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre2', 'apellidoP2', 'apellidoM2','25870','correo2');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre3', 'apellidoP3', 'apellidoM3','25870','correo3');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre4', 'apellidoP4', 'apellidoM4','25870','correo4');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre5', 'apellidoP5', 'apellidoM5','25870','correo5');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre6', 'apellidoP6', 'apellidoM6','25870','correo6');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre1', 'apellidoP7', 'apellidoM7','25870','correo7');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre8', 'apellidoP8', 'apellidoM8','25870','correo8');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre9', 'apellidoP9', 'apellidoM9','25870','correo9');
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre10', 'apellidoP10', 'apellidoM10','25870','correo10');

SELECT *FROM Pago;
UPDATE Pago set nombre = 'nombreUpdate' WHERE idPago= 3;
DELETE FROM Pago WHERE  idPago= 4;
#sin el where borra todo
INSERT INTO Pago(numeroTarjeta, fechaVencimiento, nombre, apellidPaterno, apellidoMaterno,codigoPostal,correo)
values ('123123123','2022-8-12','nombre10', 'apellidoP10', 'apellidoM10','25870','correo10');
SELECT *FROM Pago;

#Aspecto
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre1','ruta1','temporada1','calidad1');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre2','ruta2','temporada2','calidad2');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre3','ruta3','temporada3','calidad3');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre4','ruta4','temporada4','calidad4');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre5','ruta5','temporada5','calidad5');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre6','ruta6','temporada6','calidad6');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre7','ruta7','temporada7','calidad7');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre8','ruta8','temporada8','calidad8');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre9','ruta9','temporada9','calidad9');
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre10','ruta10','temporada10','calidad10');
SELECT *FROM Aspecto;
UPDATE Aspecto set nombre = 'nombreUpdate' WHERE idAspecto= 3;
DELETE FROM Aspecto WHERE  idAspecto= 4;
#sin el where borra todo
INSERT INTO Aspecto(nombre, ruta, temporada, calidad) values ('nombre11','ruta11','temporada11','calidad11');
SELECT *FROM Aspecto;

#Nivel
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('1','recompensa1','recompensa1');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('2','recompensa2','recompensa2');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('3','recompensa3','recompensa3');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('4','recompensa4','recompensa4');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('5','recompensa5','recompensa5');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('6','recompensa6','recompensa6');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('7','recompensa7','recompensa7');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('8','recompensa8','recompensa8');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('9','recompensa9','recompensa9');
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('10','recompensa10','recompensa10');
SELECT *FROM Nivel;
UPDATE Nivel set recompensaGratis = 'recompensaUpdate' WHERE idNivel= 3;
DELETE FROM Nivel WHERE  idNivel= 6;
#sin el where borra todo
INSERT INTO Nivel(numero, recompensaGratis, recompensaRoyale) values ('1','recompensa11','recompensa11');
SELECT *FROM Nivel;


#Desafio
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre1');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre2');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre3');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre4');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre5');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre6');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre7');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre8');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre9');
INSERT INTO Desafio(duracion, victorias, nombre) values ('20','14','nombre10');
SELECT *FROM Desafio;
UPDATE Desafio set nombre = 'nombreUpdate' WHERE idDesafio= 3;
DELETE FROM Desafio WHERE  idDesafio= 6;
#sin el where borra todo
SELECT *FROM Desafio;

#Habilidad
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre1','duracion1','1','recarga1', 'descripcion1');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre2','duracion2','1','recarga1', 'descripcion2');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre3','duracion3','1', 'recarga1','descripcion3');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre4','duracion4','1', 'recarga1','descripcion4');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre5','duracion5','1','recarga1', 'descripcion5');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre6','duracion6','1', 'recarga1','descripcion6');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre7','duracion7','1','recarga1', 'descripcion7');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre8','duracion8','1','recarga1', 'descripcion8');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre9','duracion9','1','recarga1', 'descripcion9');
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre10','duracion10','1','recarga1', 'descripcion10');
SELECT *FROM Habilidad;
UPDATE Habilidad set nombre = 'nombreUpdate' WHERE idHabilidad= 3;
DELETE FROM Habilidad WHERE  idHabilidad= 6;
#sin el where borra todo
INSERT INTO Habilidad(nombre, duracion, coste, recarga, descripcion) values ('nombre11','duracion11','1','recarga1', 'descripcion11');
SELECT *FROM Habilidad;

#Maestria
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre1','dificultad1','calidad1', 'experiencia1', 'definicion1', 'recompensa1');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre12','dificultad3','calidad2', 'experiencia2', 'definicion2', 'recompensa2');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre3','dificultad4','calidad3', 'experiencia3', 'definicion3', 'recompensa3');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre4','dificultad5','calidad4', 'experiencia4', 'definicion4', 'recompensa4');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre5','dificultad6','calidad5', 'experiencia5', 'definicion5', 'recompensa5');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre6','dificultad7','calidad6', 'experiencia6', 'definicion6', 'recompensa6');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre7','dificultad8','calidad7', 'experiencia7', 'definicion7', 'recompensa7');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre8','dificultad8','calidad8', 'experiencia8', 'definicion8', 'recompensa8');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre9','dificultad9','calidad9', 'experiencia9', 'definicion9', 'recompensa9');
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre10','dificultad10','calidad10', 'experiencia10', 'definicion10', 'recompensa10');
SELECT *FROM Maestria;
UPDATE Maestria set nombre = 'nombreUpdate' WHERE idMaestria= 3;
DELETE FROM Maestria WHERE  idMaestria= 6;
#sin el where borra todo
INSERT INTO Maestria(nombre,dificultad, calidad, experiencia,definicion,recompensa) 
values ('nombre11','dificultad11','calidad11', 'experiencia11', 'definicion11', 'recompensa11');
SELECT *FROM Maestria;


#Carta
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad1','descripcion1', '1');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad2','descripcion2', '2');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad3','descripcion3', '2');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad14','descripcion4', '2');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad5','descripcion5', '1');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad6','descripcion6', '1');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad7','descripcion7', '1');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad8','descripcion8', '1');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad9','descripcion9', '1');
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad10','descripcion10', '1');
SELECT *FROM Cartaa;
UPDATE Cartaa set calidad = 'calidadUpdate' WHERE idCartaa= 3;
DELETE FROM Cartaa WHERE  idCartaa= 6;
#sin el where borra todo
INSERT INTO Cartaa(calidad, descripcion, idMaestria) values ('calidad11','descripcion11', '1');
SELECT *FROM Cartaa;

#Mazo
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel1','tipo1','coste1' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel2','tipo2','coste2' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel3','tipo3','coste3' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel4','tipo4','coste4' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel5','tipo5','coste5' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel6','tipo6','coste6' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel7','tipo7','cost47' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel8','tipo8','coste8' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel9','tipo9','coste9' );
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel10','tipo10','coste10' );
SELECT *FROM Mazo;
UPDATE Mazo set tipo = 'TipoUpdate' WHERE idMazo= 3;
DELETE FROM Mazo WHERE  idMazo= 6;
#sin el where borra todo
INSERT INTO Mazo(nivel, tipo, coste) values ('nivel11','tipo11','coste11' );
SELECT *FROM Mazo;

#Maestro
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre1','nivel1','difiultad1' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre2','nivel4','difiultad2' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre3','nivel4','difiultad3' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre4','nivel5','difiultad4' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre5','niveñ6','difiultad5' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre6','nivel7','difiultad6' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre7','nivel8','difiultad7' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre8','nivel8','difiultad8' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre9','nivel9','difiultad9' );
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre10','nivel10','difiultad10' );
SELECT *FROM Maestro;
UPDATE Maestro set nombre = 'nombreUpdate' WHERE idMaestro= 3;
DELETE FROM Maestro WHERE  idMaestro= 6;
#sin el where borra todo
INSERT INTO Maestro(nombre,nivel,dificultad) values ('nombre11','nivel11','difiultad11' );
SELECT *FROM Maestro;

#Estadistica
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3332','1231','12344','100/100' );
SELECT *FROM Estadistica;
UPDATE Estadistica set victorias = '213212' WHERE idEstadistica= 3;
DELETE FROM Estadistica WHERE  idEstadistica= 6;
#sin el where borra todo
INSERT INTO Estadistica(victorias, tresCoronas, donaciones, coleccion) values ('3323432','1232431','12234344','99/100' );
SELECT *FROM Estadistica;

#Logro
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre1','dificultad1','descripcion1' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre2','dificultad2','descripcion2' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre3','dificultad3','descripcion3' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre4','dificultad4','descripcion4' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre5','dificultad5','descripcion5' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre6','dificultad6','descripcion6' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre7','dificultad7','descripcion7' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre8','dificultad8','descripcion8' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre9','dificultad9','descripcion9' );
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre10','dificultad10','descripcion10' );
SELECT *FROM Logro;
UPDATE Logro set nombre = 'nombreUpdate' WHERE idLogro= 3;
DELETE FROM Logro WHERE  idLogro= 6;
#sin el where borra todo
INSERT INTO Logro(nombre,dificultad,descripcion) values ('nombre11','dificultad11','descripcion11' );
SELECT *FROM Logro;


##############################-
#Comodin
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso1','calidad1' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso2','calidad2' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso3','calidad3' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso4','calidad4' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso5','calidad5' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso6','calidad6' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso7','calidad7' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso8','calidad8' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso9','calidad9' );
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('234','1000','uso10','calidad10' );
SELECT *FROM Comodin;
UPDATE Comodin set almacen = '103' WHERE idComodin= 3;
DELETE FROM Comodin WHERE  idComodin= 6;
#sin el where borra todo;
INSERT INTO Comodin(almacen,maximo,uso,calidad) values ('2324','1000','uso11','calidad11' );
SELECT *FROM Comodin;

#Botin
INSERT INTO Botin(oro, cartas, comodines) values ('12333','1233112','2133' );
INSERT INTO Botin(oro, cartas, comodines) values ('8333','8979','456' );
INSERT INTO Botin(oro, cartas, comodines) values ('987','567','987689' );
INSERT INTO Botin(oro, cartas, comodines) values ('36','4567','24434' );
INSERT INTO Botin(oro, cartas, comodines) values ('9687','67','687' );
INSERT INTO Botin(oro, cartas, comodines) values ('687','679','69' );
INSERT INTO Botin(oro, cartas, comodines) values ('69','79','2136973' );
INSERT INTO Botin(oro, cartas, comodines) values ('7679','69','219633' );
INSERT INTO Botin(oro, cartas, comodines) values ('978','8768','976' );
INSERT INTO Botin(oro, cartas, comodines) values ('69','123316912','769' );
SELECT *FROM Botin;
UPDATE Botin set cartas = '103' WHERE idBotin= 3;
DELETE FROM Botin WHERE  idBotin= 6;
#sin el where borra todo;
INSERT INTO Botin(oro, cartas, comodines) values ('32','9312','4554' );
SELECT *FROM Botin;

#Bonus
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario1','semanal1','12332','recompensa1' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario2','semanal2','1233232','recompensa2' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario3','semanal3','1233432','recompensa3' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario4','semanal4','12332','recompensa4' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario5','semanal5','129332','recompensa5' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario6','semanal6','1238732','recompensa6' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario7','semanal7','12345332','recompensa7' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario8','semanal8','123732','recompensa8' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario9','semanal9','1288332','recompensa9' );
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario10','semanal10','1266332','recompensa10' );
SELECT *FROM Bonus;
UPDATE Bonus set recompensa = 'recompensaUpdate' WHERE idBonus= 3;
DELETE FROM Bonus WHERE  idBonus= 6;
#sin el where borra todo;
INSERT INTO Bonus(diario, semanal, experiencia, recompensa) values ('diario11','semanal11','12231332','recompensa11' );
SELECT *FROM Bonus;

#libro
INSERT INTO Libro(calidad, uso) values ('calidad1','Uso1' );
INSERT INTO Libro(calidad, uso) values ('calidad2','Uso2' );
INSERT INTO Libro(calidad, uso) values ('calidad3','Uso3' );
INSERT INTO Libro(calidad, uso) values ('calidad4','Uso4' );
INSERT INTO Libro(calidad, uso) values ('calidad5','Uso5' );
INSERT INTO Libro(calidad, uso) values ('calidad6','Uso6' );
INSERT INTO Libro(calidad, uso) values ('calidad7','Uso7' );
INSERT INTO Libro(calidad, uso) values ('calidad8','Uso8' );
INSERT INTO Libro(calidad, uso) values ('calidad9','Uso9' );
INSERT INTO Libro(calidad, uso) values ('calidad10','Uso10' );
SELECT *FROM Libro;
UPDATE Libro set calidad = 'calidadaUpdate' WHERE idLibro= 3;
DELETE FROM Libro WHERE  idLibro= 6;
#sin el where borra todo
INSERT INTO Libro(calidad, uso) values ('calidad11','Uso11' );
SELECT *FROM Libro;

#Intercambio
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad1','2022-8-12','cantidad1' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad2','2022-8-12','cantidad2' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad3','2022-8-12','cantidad3' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad4','2022-8-12','cantidad4' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad5','2022-8-12','cantidad5' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad6','2022-8-12','cantidad6' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad7','2022-8-12','cantidad7' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad8','2022-8-12','cantidad8' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad9','2022-8-12','cantidad9' );
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad10','2022-8-12','cantidad10' );
SELECT *FROM Intrercambio;
UPDATE Intrercambio set calidad = 'calidadaUpdate' WHERE idIntercambio= 3;
DELETE FROM Intrercambio WHERE  idIntercambio= 6;
#sin el where borra todo;
INSERT INTO Intrercambio(calidad, fecha, cantidad) values ('calidad11','2022-8-12','cantidad11' );
SELECT *FROM Intrercambio;

#Donacion
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad1','2022-8-12','codigo1' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad2','2022-8-12','codigo2' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad3','2022-8-12','codigo3' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad4','2022-8-12','codigo4' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad5','2022-8-12','codigo5' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad6','2022-8-12','codigo6' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad7','2022-8-12','codigo7' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad8','2022-8-12','codigo8' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad9','2022-8-12','codigo9' );
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad10','2022-8-12','codigo10');
SELECT *FROM Donacion;
UPDATE Donacion set calidad = '2022-8-12' WHERE idDonacion= 3;
DELETE FROM Donacion WHERE  idDonacion= 6;
#sin el where borra todo
INSERT INTO Donacion(cantidad, calidad, codigo) values ('cantidad11','2022-8-12','codigo11' );
SELECT *FROM Donacion;

#Donacion
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre1','dificultad1','descrpicion1' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre2','dificultad2','descrpicion2' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre3','dificultad3','descrpicion3' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre4','dificultad4','descrpicion4' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre5','dificultad5','descrpicion5' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre6','dificultad6','descrpicion6' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre7','dificultad7','descrpicion7' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre8','dificultad8','descrpicion8' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre9','dificultad','descrpicion9' );
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre10','dificultad10','descrpicion10' );
SELECT *FROM ModoJuego;
UPDATE ModoJuego set nombre = 'nombreUpdate' WHERE idModoJuego= 3;
DELETE FROM ModoJuego WHERE  idModoJuego= 6;
#sin el where borra todo
INSERT INTO ModoJuego(nombre, dificultad, descripcion) values ('nombre11','dificultad11','descrpicion11' );
SELECT *FROM ModoJuego;

#liga
INSERT INTO LigClan(nombre, rango) values ('nombre1','rango1' );
INSERT INTO LigClan(nombre, rango) values ('nombre2','rango2' );
INSERT INTO LigClan(nombre, rango) values ('nombre3','rango3' );
INSERT INTO LigClan(nombre, rango) values ('nombre4','rango4' );
INSERT INTO LigClan(nombre, rango) values ('nombre5','rango5' );
INSERT INTO LigClan(nombre, rango) values ('nombre6','rango6' );
INSERT INTO LigClan(nombre, rango) values ('nombre7','rango7' );
INSERT INTO LigClan(nombre, rango) values ('nombre8','rango8' );
INSERT INTO LigClan(nombre, rango) values ('nombre9','rango9' );
INSERT INTO LigClan(nombre, rango) values ('nombr10','rango10' );
SELECT *FROM LigClan;
UPDATE LigClan set nombre = 'nombreUpdate' WHERE idLigaClan= 3;
DELETE FROM LigClan WHERE  idLigaClan= 6;
#sin el where borra todo
INSERT INTO LigClan(nombre, rango) values ('nombr111','rango11' );
SELECT *FROM LigClan;


#Solicitud
INSERT INTO Solicitud(nombre, trofeos) values ('nombre1','1324' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre2','1312324' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre3','1321234' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre4','3123' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre5','1312312324' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre6','34323' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre7','2347876' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre8','86347986' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre9','13536454724' );
INSERT INTO Solicitud(nombre, trofeos) values ('nombre10','654' );
SELECT *FROM Solicitud;
UPDATE Solicitud set nombre = 'nombreUpdate' WHERE idSolicitud= 3;
DELETE FROM Solicitud where idSolicitud = 6;
#sin el where borra todo
INSERT INTO Solicitud(nombre, trofeos) values ('nombre11','6532194' );
SELECT *FROM Solicitud;

#Puesto
INSERT INTO Puesto(nombre, sueldo) values ('nombre1','5646' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre2','435' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre3','865' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre4','94521' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre5','46767' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre6','12309043' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre7','12343' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre8','123434356' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre9','1233443' );
INSERT INTO Puesto(nombre, sueldo) values ('nombre10','132343' );
SELECT *FROM Puesto;
UPDATE Puesto set nombre = 'nombreUpdate' WHERE idPuesto= 3;
DELETE FROM Puesto where idPuesto = 6;
#sin el where borra todo
INSERT INTO Puesto(nombre, sueldo) values ('nombre11','1323439292' );
SELECT *FROM Puesto;


#CreadorContenido
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre1','8756464','Codigo1' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre2','5646894','Codigo2' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre3','564964','Codigo3' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre4','567464','Codigo4' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre5','5649864','Codigo5' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre6','56464534','Codigo6' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre7','564564','Codigo7' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre8','564464','Codigo8' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre9','536464','Codigo9' );
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre10','1256464','Codigo10' );
SELECT *FROM CreadorContenido;
UPDATE CreadorContenido set nombre = 'nombreUpdate' WHERE idCreadorContenido= 3;
DELETE FROM CreadorContenido where idCreadorContenido = 6;
#sin el where borra todo
INSERT INTO CreadorContenido(nombre, suscriptores, codigo) values ('nombre10','1256464','Codigo11' );
SELECT *FROM Liga;

#Mercader
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha1','opcion1','tipo1' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha2','opcion2','tipo2' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha3','opcion3','tipo3' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha4','opcion4','tipo4' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha5','opcion5','tipo5' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha6','opcion6','tipo6' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha7','opcion7','tipo7' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha8','opcion8','tipo8' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha9','opcion9','tipo9' );
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha10','opcion10','tipo10' );
SELECT *FROM Mercader;
UPDATE Mercader set tipo = 'tipoUpdtae' WHERE idMercader= 3;
DELETE FROM Mercader where idMercader = 6;
#sin el where borra todo
INSERT INTO Mercader(ficha, opcion, tipo) values ('ficha11','opcion11','tipo11' );
SELECT *FROM Liga;

#CaminoTrofe
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre1','recompensa1', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre2','recompensa1', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre3','recompensa1', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre4','recompensa10', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre5','recompensa10', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre6','recompensa10', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre7','recompensa10', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre8','recompensa10', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre9','recompensa10', '10', '11' );
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre10','recompensa10', '10', '11' );
SELECT *FROM CaminoTrofeo;
UPDATE CaminoTrofeo set nombre = 'nombreUpdate' WHERE idCaminoTrofeo= 3;
DELETE FROM CaminoTrofeo where idCaminoTrofeo = 6;
#sin el where borra todo
INSERT INTO CaminoTrofeo(trofeos, nombre, recompensa, idArena, idLiga) values ('123','nombre1234','recompensa10', '10', '11' );
SELECT *FROM CaminoTrofeo;


#CaminoLeyenda
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre1','recompensa1', '3' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre2','recompensa2', '4' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre3','recompensa3', '6' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre4','recompensa4', '3' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre5','recompensa5', '8' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre6','recompensa6', '7' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre7','recompensa7', '3' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre8','recompensa8', '3' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre9','recompensa9', '3' );
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre10','recompensa10', '3' );
SELECT *FROM CaminoLeyenda;
UPDATE CaminoLeyenda set nombre = 'nombreUpdate' WHERE idCaminoLeyenda= 3;
DELETE FROM CaminoLeyenda where idCaminoLeyenda = 6;
#sin el where borra todo
INSERT INTO CaminoLeyenda(trofeos, nombre, recompensa, idArena) values ('1233','nombre11','recompensa11', '3' );
SELECT *FROM CaminoLeyenda;


#Paswe
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre1','1','tematica1', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre2','2','tematica2', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre3','3','tematica3', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre4','4','tematica4', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre5','5','tematica5', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre6','6','tematica6', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre7','7','tematica7', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre8','8','tematica8', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre9','9','tematica9', '1','1','1' );
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre10','10','tematica10', '1','1','1' );
SELECT *FROM Pase;
UPDATE Pase set nombre = 'nombreUpdate' WHERE idPase= 3;
DELETE FROM Pase where idPase = 6;
#sin el where borra todo
INSERT INTO Pase(nombre, temporada, tematica, idAspecto,idReaccion, idNivel) values ('nombre11','11','tematica11', '1','1','1' );
SELECT *FROM Pase;

#Tienad
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro1','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro2','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro3','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro4','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro5','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro6','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro7','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro8','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro9','1','gemas1', '4','6','7','10' );
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro10','1','gemas1', '4','6','7','10' );
SELECT *FROM Tienda;
UPDATE Tienda set oro = 'oroUpdate' WHERE idTienda= 3;
DELETE FROM Tienda where idTienda = 6;
#sin el where borra todo
INSERT INTO Tienda(oro, gemas, cantidad, idCofre, idReaccion, idOferta, idCodigoRegalo) 
values ('oro11','1','gemas1', '4','6','7','10' );
SELECT *FROM Tienda;

#Campeon
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre1','123','velocidad2','alcance1', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre2','123','velocidad2','alcance2', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre3','123','velocidad3','alcance3', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre4','123','velocidad4','alcance4', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre5','123','velocidad5','alcance5', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre6','123','velocidad6','alcance6', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre7','123','velocidad7','alcance7', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre8','123','velocidad8','alcance8', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre9','123','velocidad9','alcance9', '324','4','3','5' );
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre10','123','velocidad10','alcance10', '324','4','3','5' );
SELECT *FROM Campeon;
UPDATE Campeon set nombre = 'oroUpdate' WHERE idCampeon= 3;
DELETE FROM Campeon where idCampeon = 6;
#sin el where borra todo
INSERT INTO Campeon(nombre, vida, velocidad, alcance,daño, coste, idCarta, idHabilidad) 
values ('nombre11','123','velocidad11','alcance11', '324','4','3','5' );
SELECT *FROM Campeon;

#Estructura
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad1','alcance1', 'objetivo1','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre2','123','velocidad2','alcance2', 'objetivo2','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre3','123','velocidad3','alcance3', 'objetivo3','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre4','123','velocidad4','alcance4', 'objetivo4','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre5','123','velocidad5','alcance5', 'objetivo5','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre6','123','velocidad6','alcance6', 'objetivo6','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre7','123','velocidad7','alcance7', 'objetivo7','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre8','123','velocidad8','alcance8', 'objetivo8','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre9','123','velocidad9','alcance9', 'objetivo9','4','3');
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre10','123','velocidad10','alcance10', 'objetivo10','4','3');
SELECT *FROM Estructura;
UPDATE Estructura set nombre = 'nombreUpdate' WHERE idEstructura= 3;
DELETE FROM Estructura where idEstructura = 6;
#sin el where borra todo;
INSERT INTO Estructura(nombre, vida, velocidad, alcance,objetivo, coste, idCarta) 
values ('nombre10','123','velocidad10','alcance10', 'objetivo10','4','3');
SELECT *FROM Estructura;

#Tropa
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','1323','velocidad1','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad2','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad3','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad4','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad5','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad6','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre1','123','velocidad7','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre8','123','velocidad8','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre9','123','velocidad9','daño1','alcance1', 'objetivo1','4','3');
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre10','123','velocidad10','daño1','alcance1', 'objetivo1','4','3');
SELECT *FROM Tropa;
UPDATE Tropa set nombre = 'nombreUpdate' WHERE idTropa= 3;
DELETE FROM Tropa where idTropa = 6;
#sin el where borra todo
INSERT INTO Tropa(nombre, vida, velocidad, daño, alcance,objetivo, coste, idCarta) 
values ('nombre12','123','velocidad12','daño1','alcance12', 'objetivo12','4','3');
SELECT *FROM Tropa;


#Echizo
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre1','1323','dañoTorres1','alcance1', 'coste1','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre2','1323','dañoTorres2','alcance2', 'coste2','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre3','1323','dañoTorres3','alcance3', 'coste3','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre4','1323','dañoTorres4','alcance4', 'coste4','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre5','1323','dañoTorres5','alcance5', 'coste5','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre6','1323','dañoTorres6','alcance6', 'coste6','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre7','1323','dañoTorres7','alcance7', 'coste7','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre8','1323','dañoTorres8','alcance8', 'coste8','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre9','1323','dañoTorres9','alcance9', 'coste9','3');
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre10','1323','dañoTorres10','alcance10', 'coste10','3');
SELECT *FROM Echizo;
UPDATE Echizo set nombre = 'nombreUpdate' WHERE idEchizo= 3;
DELETE FROM Echizo where idEchizo = 6;
#sin el where borra todo
INSERT INTO Echizo(nombre, dañoTorres,ancho, alcance, coste, idCarta) 
values ('nombre11','1323','ancho11','alcance11', 'coste11','3');
SELECT *FROM Echizo;

#Pedido
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo1','2022-8-12','cantidad1');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo2','2022-8-12','cantidad2');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo3','2022-8-12','cantidad3');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo4','2022-8-12','cantidad4');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo5','2022-8-12','cantidad5');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo6','2022-8-12','cantidad6');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo7','2022-8-12','cantidad7');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo8','2022-8-12','cantidad8');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo9','2022-8-12','cantidad9');
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo10','2022-8-12','cantidad1');
SELECT *FROM Pedido;
UPDATE Pedido set cantidad = 'cantidadUpdate' WHERE idPedido= 3;
DELETE FROM Pedido where idPedido = 6;
#sin el where borra todo
INSERT INTO Pedido(tiempo, calidad, cantidad) values ('tiempo11','2022-8-12','cantidad11');
SELECT *FROM Pedido;


#Clan
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre1', 'tipo1', 'trofeo1', 'miembros1', 'codigo1','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre2', 'tipo2', 'trofeo2', 'miembros1', 'codigo1','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre3', 'tipo3', 'trofeo3', 'miembros2', 'codigo2','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre4', 'tipo4', 'trofeo4', 'miembros4', 'codigo2','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre5', 'tipo5', 'trofeo5', 'miembros5', 'codigo2','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre6', 'tipo6', 'trofeo6', 'miembros6', 'codigo2','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre7', 'tipo7', 'trofeo7', 'miembros7', 'codigo2','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre8', 'tipo8', 'trofeo8', 'miembros8', 'codigo2','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre9', 'tipo9', 'trofeo9', 'miembros9', 'codigo9','1','1','1','4','10' );
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre10', 'tipo10', 'trofeo10', 'miembros10', 'codigo10','1','1','1','4','10' );
SELECT *FROM Clan;
UPDATE Clan set nombre = 'nombreUpdate' WHERE idClan= 3;
DELETE FROM Clan where idClan = 6;
#sin el where borra todo
INSERT INTO Clan(nombre, tipo , trofeos, miembros, codigo, idModoJuego, idMercader, idLigClan, idPedido, idIntercambio) 
values ('nombre11', 'tipo11', 'trofeo11', 'miembros11', 'codigo11','1','1','1','4','10' );
SELECT *FROM Clan;

#Mision
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre1', 'tarea1', '10' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre2', 'tarea2', '5' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre3', 'tarea3', '3' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre4', 'tarea4', '2' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre5', 'tarea5', '10' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre6', 'tarea6', '10' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre7', 'tarea7', '8' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre8', 'tarea8', '10' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre9', 'tarea9', '10' );
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre10', 'tarea10', '10' );
SELECT *FROM Mision;
UPDATE Mision set nombre = 'nombreUpdate' WHERE idMision= 3;
DELETE FROM Mision where idMision = 6;
#sin el where borra todo
INSERT INTO Mision(nombre, tarea, idBonus)  values ('nombre11', 'tarea11', '10' );
SELECT *FROM Mision;

#Jugador
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre1','codigo1', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre2','codigo2', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre3','codigo3', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre4','codigo4', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre5','codigo5', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre6','codigo6', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre7','codigo7', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre8','codigo8', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre9','codigo9', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre10','codigo10', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
SELECT *FROM Jugador;
UPDATE Jugador set nombre = 'nombreUpdate' WHERE idJugador= 3;
DELETE FROM Jugador where idJugador = 6;
#sin el where borra todo
INSERT INTO Jugador(nombre, codigo, puntosEstelares,experiencia, idDesafio, idLibro,idClan, idTorneo, idPase, idCaminoTrofeo,idCaminoLeyenda)
values ('nombre11','codigo11', '1244', '4324', '2', '1', '10', '1', '1','11', '3');
SELECT *FROM Jugador;

#Clasificacion
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('345', '412', '10254', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('3453', '344', '4354535', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('453443', '131', '435454', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('4353453', '654', '45435', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('234543', '876', '334543', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('234', '234', '87857', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('45442', '432', '113124', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('345345', '463', '909767', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('345435', '865', '576547', '10');
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('5435', '422', '657567', '10');
SELECT *FROM Clasificacionn;
UPDATE Clasificacionn set medallas = '12321' WHERE idClasificacion= 3;
DELETE FROM Clasificacionn where idClasificacion = 6;
#sin el where borra todo
INSERT INTO Clasificacionn(medallas, puesto, reproducciones, idJugador)  values ('312432', '131', '134234', '10');
SELECT *FROM Clasificacionn;

#Supercell
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo1', 'codgio1', 'juego1');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo2', 'codgio2', 'juego2');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo3', 'codgio3', 'juego3');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo4', 'codgio4', 'juego4');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo5', 'codgio5', 'juego5');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo6', 'codgio6', 'juego6');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo7', 'codgio7', 'juego7');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo8', 'codgio8', 'juego8');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo9', 'codgio9', 'juego9');
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo10', 'codgio10', 'juego10');
SELECT *FROM Supercell;
UPDATE Supercell set correo = 'correo11' WHERE idSupercell= 3;
DELETE FROM Supercell where idSupercell = 6;
#sin el where borra todo;
INSERT INTO Supercell(correo, codigo, juegos)  values ('correo11', 'codgio11', 'juego11');
SELECT *FROM Supercell;

#Empleado  
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre1', 'apellidoPaterno1', 'apellidoMaterno1', 'pais1', 'calle1','colonia1','municipio1','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre2', 'apellidoPaterno2', 'apellidoMaterno2', 'pais2', 'calle2','colonia2','municipio2','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre3', 'apellidoPaterno3', 'apellidoMaterno3', 'pais3', 'calle3','colonia3','municipio3','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre4', 'apellidoPaterno4', 'apellidoMaterno4', 'pais4', 'calle4','colonia4','municipio4','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre5', 'apellidoPaterno5', 'apellidoMaterno5', 'pais5', 'calle5','colonia5','municipio5','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre6', 'apellidoPaterno6', 'apellidoMaterno6', 'pais6', 'calle6','colonia6','municipio6','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre7', 'apellidoPaterno7', 'apellidoMaterno7', 'pais7', 'calle7','colonia7','municipio7','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre8', 'apellidoPaterno8', 'apellidoMaterno8', 'pais8', 'calle8','colonia8','municipio8','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre9', 'apellidoPaterno9', 'apellidoMaterno9', 'pais9', 'calle9','colonia9','municipio9','1');
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre10', 'apellidoPaterno10', 'apellidoMaterno10', 'pais10', 'calle10','colonia10','municipio10','1');

SELECT *FROM Empleado;
UPDATE Empleado set nombre = 'nombreUpdate' WHERE idEmpleado= 3;
DELETE FROM Empleado where idEmpleado = 6;
#sin el where borra todo
INSERT INTO Empleado(nombre, apellidoPaterno, apellidoMaterno, pais, calle, colonia, municipo, idPuesto) 
values ('nombre11', 'apellidoPaterno11', 'apellidoMaterno11', 'pais11', 'calle11','colonia11','municipio11','1');
SELECT *FROM Empleado;

#Guerra
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto1', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto2', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto3', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto4', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto5', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto6', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto7', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto8', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto9', '1232');
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto10', '1232');
SELECT *FROM Guerra;
UPDATE Guerra set puesto = 'puestoUpdate' WHERE idGuerra= 3;
DELETE FROM Guerra where idGuerra = 6;
#sin el where borra todo
INSERT INTO Guerra(trofeos, puesto, ataques)  values ('314', 'puesto11', '1232');
SELECT *FROM Guerra;

#RegistroJugadpr
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador1', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador2', '2022-8-12', '7','1');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador3', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador4', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador5', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador6', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador7', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador8', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador', '2022-8-12', '7','11');
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador10', '2022-8-12', '7','11');
SELECT *FROM RegistroJugador;
UPDATE RegistroJugador set ganador = 'ganadorUpdate' WHERE idRegistroJugador= 3;
DELETE FROM RegistroJugador where idRegistroJugador = 6;
#sin el where borra todo
INSERT INTO RegistroJugador(ganador, fecha, idRegistro,idJugador)  values ('ganador11', '2022-8-12', '7','11');
SELECT *FROM RegistroJugador;

#SupercellEmpleado
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('1', '1');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('2', '2');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('3', '3');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('4', '4');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('5', '5');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('5', '5');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('7', '7');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('8', '8');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('9', '9');
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('10', '10');
SELECT *FROM SupercellEmpleado;
UPDATE SupercellEmpleado set idSupercell = '2' WHERE idSupercell= 3;
DELETE FROM SupercellEmpleado where idSupercell = 6;
#sin el where borra todo
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('3', '3');
SELECT *FROM SupercellEmpleado;

#SupercellCreadoConrtenido
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('9', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
INSERT INTO SupercellCreadoConrtenido (idSupercell,idCreadorContenido)  values ('10', '10');
SELECT *FROM SupercellEmpleado;
UPDATE SupercellEmpleado set idSupercell = '2' WHERE idSupercell= 3;
DELETE FROM SupercellEmpleado where idSupercell = 6;
#sin el where borra todo
INSERT INTO SupercellEmpleado (idSupercell,idEmpleado)  values ('3', '3');
SELECT *FROM Clan;


#ClanSolicitud
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1');
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1');
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1') ; 
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1') ; 
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','5','1')  ;
SELECT *FROM ClanSolicitud;
UPDATE ClanSolicitud set idClan = '2' WHERE idClanSolicitud= 3;
DELETE FROM ClanSolicitud where idClanSolicitud = 6;
#sin el where borra todo
INSERT INTO ClanSolicitud(fecha, idClan,idSolicitud) values ('2022-8-12','9','9')  ;
SELECT *FROM ClanSolicitud;

#ClanGuerra
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','1','2022-8-12');

SELECT *FROM ClanGuerra;
UPDATE ClanGuerra set idClan = '2' WHERE idClanGuerra= 3;
DELETE FROM ClanGuerra where idClanGuerra = 6;
#sin el where borra todo;
INSERT INTO ClanGuerra(idClan,idGuerra,duracion) values ('10','7','2022-8-12');
SELECT *FROM ClanGuerra;

#LibroJugador
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','10');
SELECT *FROM LibroJugador;
UPDATE LibroJugador set idJugador = '2' WHERE idLibroJugador= 3;
DELETE FROM LibroJugador where idLibroJugador = 6;
#sin el where borra todo;
INSERT INTO LibroJugador(idJugador,idLibro) values ('10','9');
SELECT *FROM LibroJugador;

#LibroJugador
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');

SELECT *FROM Comodin;
UPDATE JugadorComodin set idJugador = '11' WHERE idJugadorComodin= 3;
DELETE FROM JugadorComodin where idJugadorComodin = 6;
#sin el where borra todo
INSERT INTO JugadorComodin(idJugador,idComodin) values ('10','11');
SELECT *FROM JugadorComodin;

#LibroJugador
INSERT INTO LogroJugador(idLogro,idJugador) values ('5','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('4','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('4','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('2','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('3','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('9','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('5','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('5','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('9','10');
INSERT INTO LogroJugador(idLogro,idJugador) values ('5','10');
SELECT *FROM LogroJugador;
UPDATE LogroJugador set idJugador = '9' WHERE idLogroJugador= 1;
DELETE FROM LogroJugador where idLogroJugador = 6;
#sin el where borra todo;
INSERT INTO LogroJugador(idLogro,idJugador) values ('5','9');
SELECT *FROM LogroJugador;


#MaestroJugador
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','7');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('3','7');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('7','7');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('8','4');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('9','4');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('9','5');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','9');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','8');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','7');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','7');
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','7');
SELECT *FROM MaestroJugador;
UPDATE MaestroJugador set idJugador = '8' WHERE idMaestroJugador= 1;
DELETE FROM MaestroJugador where idMaestroJugador = 6;
#sin el where borra todo
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','7');
SELECT *FROM MaestroJugador;

#JugasdorMazo
INSERT INTO JugadorMazo(idMazo,idJugador) values ('5','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('4','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('7','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('8','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('9','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('10','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('11','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('5','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('5','7');
INSERT INTO JugadorMazo(idMazo,idJugador) values ('5','7');
SELECT *FROM JugadorMazo;
UPDATE JugadorMazo set idJugador = '11' WHERE idJugadorMazo= 1;
DELETE FROM JugadorMazo where idJugadorMazo = 6;
#sin el where borra todo
INSERT INTO MaestroJugador(idMaestro,idJugador) values ('5','4');
SELECT *FROM Tienda;

#PasoTienda
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
INSERT INTO PaseTienda(idPase,idTienda) values ('5','11');
SELECT *FROM PaseTienda;
UPDATE PaseTienda set idPase = '11' WHERE idPaseTienda= 1;
DELETE FROM PaseTienda where idPaseTienda = 6;
#sin el where borra todo
INSERT INTO PaseTienda(idPase,idTienda) values ('7','11');
SELECT *FROM Jugador;

#JugadorCofre
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
INSERT INTO JugadorCofre(idJugador, idCofre) values ('11','7');
SELECT *FROM JugadorCofre;
UPDATE JugadorCofre set idJugador = '11' WHERE idJugadorCofre= 1;
DELETE FROM JugadorCofre where idJugadorCofre = 6;
#sin el where borra todo
INSERT INTO JugadorCofre(idJugador, idCofre) values('11','7');
SELECT *FROM JugadorCofre;


#-TiendaPago
INSERT INTO TiendaPago(idTienda, idPago) values ('5','1');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','2');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','3');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','3');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','5');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','6');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','7');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','8');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','9');
INSERT INTO TiendaPago(idTienda, idPago) values ('5','10');
SELECT *FROM TiendaPago;
UPDATE TiendaPago set idTienda = '11' WHERE idTiendaPago= 1;
DELETE FROM TiendaPago where idTiendaPago = 6;
#sin el where borra todo
INSERT INTO TiendaPago(idTienda, idPago) values ('7','10');
SELECT *FROM TiendaPago;

#JugadorTvroyale
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('7','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('9','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('5','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('7','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('8','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('9','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('2','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('3','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('4','10');
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('1','10');
SELECT *FROM JugadorTvroyale;
UPDATE JugadorTvroyale set idJugador = '11' WHERE idJugadorTvroyale= 1;
DELETE FROM JugadorTvroyale where idJugadorTvroyale = 6;
#sin el where borra todo
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('2','10');
SELECT *FROM JugadorTvroyale;

#JugadorAdorno
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('7','11');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('5','8');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('3','2');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('2','5');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('8','11');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('9','11');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('2','11');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('4','11');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('5','11');
INSERT INTO JugadorAdorno(idJugador, idAdorno) values ('8','11');
SELECT *FROM JugadorAdorno;
UPDATE JugadorAdorno set idJugador = '11' WHERE idJugadorAdorno= 1;
DELETE FROM JugadorAdorno where idJugadorAdorno = 6;
#sin el where borra todo
INSERT INTO JugadorTvroyale(idJugador, idTvroyale) values ('2','10');
SELECT *FROM JugadorTvroyale;

#MazoCarta
INSERT INTO MazoCarta(idMazo, idCarta) values ('3','3');
INSERT INTO MazoCarta(idMazo, idCarta) values ('4','4');
INSERT INTO MazoCarta(idMazo, idCarta) values ('5','5');
INSERT INTO MazoCarta(idMazo, idCarta) values ('9','9');
INSERT INTO MazoCarta(idMazo, idCarta) values ('7','7');
INSERT INTO MazoCarta(idMazo, idCarta) values ('8','8');
INSERT INTO MazoCarta(idMazo, idCarta) values ('9','9');
INSERT INTO MazoCarta(idMazo, idCarta) values ('10','10');
INSERT INTO MazoCarta(idMazo, idCarta) values ('3','3');
INSERT INTO MazoCarta(idMazo, idCarta) values ('4','4');
SELECT *FROM MazoCarta;
UPDATE MazoCarta set idMazo = '11' WHERE idMazoCarta= 1;
DELETE FROM MazoCarta where idMazoCarta = 6;
#sin el where borra todo;
INSERT INTO MazoCarta(idMazo, idCarta) values ('4','4');
SELECT *FROM MazoCarta;

