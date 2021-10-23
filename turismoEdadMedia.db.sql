BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "AtraccionesDePromociones" (
	"Id_atracciones"	INTEGER,
	"Id_promociones"	INTEGER,
	PRIMARY KEY("Id_atracciones","Id_promociones")
);
CREATE TABLE IF NOT EXISTS "AtraccionesItinerario" (
	"Id_itinerario"	INTEGER,
	"Id_atracciones"	INTEGER,
	PRIMARY KEY("Id_atracciones","Id_itinerario")
);
CREATE TABLE IF NOT EXISTS "Itinerario" (
	"Id_itinerario"	INTEGER,
	"Id_usuario"	INTEGER,
	PRIMARY KEY("Id_itinerario","Id_usuario")
);
CREATE TABLE IF NOT EXISTS "Promociones" (
	"Id_atracciones"	INTEGER,
	"Id_promociones"	INTEGER,
	PRIMARY KEY("Id_atracciones","Id_promociones")
);
CREATE TABLE IF NOT EXISTS "PromocionesDeItinerario" (
	"Id_promociones"	INTEGER,
	"Id_itinerario"	INTEGER,
	PRIMARY KEY("Id_promociones","Id_itinerario")
);
CREATE TABLE IF NOT EXISTS "tiposAtracciones" (
	"Id_atraccion"	INTEGER,
	"Id_tipo_atracciones"	INTEGER,
	PRIMARY KEY("Id_atraccion","Id_tipo_atracciones")
);
CREATE TABLE IF NOT EXISTS "Tipos_promociones" (
	"Id_promociones"	INTEGER,
	"Id_tipo_promociones"	INTEGER,
	PRIMARY KEY("Id_promociones","Id_tipo_promociones")
);
CREATE TABLE IF NOT EXISTS "Atracciones" (
	"Id_atracciones"	INTEGER,
	"Nombre"	TEXT,
	"Cupo"	INTEGER,
	"Precio"	REAL,
	"Duracion"	REAL,
	"Posx"	REAL,
	"Posy"	REAL,
	"Id_tipo_atracciones"	INTEGER,
	PRIMARY KEY("Id_atracciones" AUTOINCREMENT)
);
INSERT INTO "Atracciones" VALUES (1,'Mora',6,10.0,2.0,1.0,2.0,1);
INSERT INTO "Atracciones" VALUES (2,'Minas Tirith',25,5.0,2.5,1.0,2.0,NULL);
INSERT INTO "Atracciones" VALUES (3,'La Comarca',150,3.0,6.5,NULL,NULL,NULL);
INSERT INTO "Atracciones" VALUES (4,'Mordor',4,25.0,3.0,NULL,NULL,NULL);
INSERT INTO "Atracciones" VALUES (5,'Abismo de Helm',150,5.0,2.0,NULL,NULL,NULL);
INSERT INTO "Atracciones" VALUES (6,'Lothorien',30,35.0,1.0,NULL,NULL,NULL);
INSERT INTO "Atracciones" VALUES (7,'Erebor',32,12.0,3.0,NULL,NULL,NULL);
INSERT INTO "Atracciones" VALUES (8,'Bosque Negro',12,3.0,3.0,NULL,NULL,NULL);
COMMIT;
