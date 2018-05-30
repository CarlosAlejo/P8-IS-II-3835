/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     30/05/2018 12:25:10                          */
/*==============================================================*/


drop table if exists CLIENTE;

drop table if exists PINTA;

drop table if exists REGISTRO;

drop table if exists TRANSFUSION;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   CEDULA_CLIENTE       int not null,
   NOMBRE_CLIENTE       char(20),
   APELLIDO_CLIENTE     char(20),
   DIRECCION_CLIENTE    char(120),
   TELEFONO_CLIENTE     numeric(8,0),
   SEXO_CLIENTE         char(8),
   PESO_CLIENTE         char(4),
   TALLA_CLIENTE        char(3),
   ENFERMEDADESV_CLIENTE char(150),
   ENFERMEDADESH_CLIENTE char(150),
   PRESION_ARTERIAL_CLIENTE numeric(8,0),
   APETITO_CLIENTE      char(100),
   SUENIO_CLIENTE       char(100),
   DEFECACION_CLIENTE   char(100),
   MICCION_CLIENTE      char(100),
   primary key (CEDULA_CLIENTE)
);

/*==============================================================*/
/* Table: PINTA                                                 */
/*==============================================================*/
create table PINTA
(
   IDBOLSA_SANGRE       char(10) not null,
   ID_TRANSFU           int,
   FACTORRH_SANGRE      char(10),
   TIPOSANGREYCOMPONENTES_SANGRE char(10),
   FECHAINGRESO_SANGRE  date,
   FECHAVENCIMIENTO_SANGRE date,
   ANTICUAGULANTE_SANGRE char(20),
   SITUACIONBOLSA_SANGRE char(100),
   OBSERVACIONES_SANGRE char(10),
   DERIVADOS_SANGRE     char(20),
   GRUPO_SANGRE         char(4),
   LUGARDONDESEENCUENTRA_SANGRE char(100),
   VOLUMENINICIAL_SANGRE numeric(8,0),
   VOLUMENFINAL_SANGRE  numeric(8,0),
   primary key (IDBOLSA_SANGRE)
);

/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/
create table REGISTRO
(
   ID_REGISTRO          int not null,
   ID_TRANSFU           int,
   COMPLICACIONES_REGISTRO char(100),
   EXTRACCIONES_REGISTRO char(100),
   DONANTE_REGISTRO     char(100),
   NOBSERVACIONES_REGISTRO char(100),
   SEROLOGIA_REGISTRO   char(100),
   primary key (ID_REGISTRO)
);

/*==============================================================*/
/* Table: TRANSFUSION                                           */
/*==============================================================*/
create table TRANSFUSION
(
   ID_TRANSFU           int not null,
   ID_USUARIO           int not null,
   CEDULA_CLIENTE       int,
   FECHA_TRANSFU        date,
   DONANTE_TRANSFU      char(100),
   PACIENTE_TRANSFU     char(100),
   primary key (ID_TRANSFU)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   ID_USUARIO           int not null,
   NOMBRE_USUARIO       char(10),
   CONTRASENA_USUARIO   text,
   primary key (ID_USUARIO)
);

alter table PINTA add constraint FK_CLASIFICA foreign key (ID_TRANSFU)
      references TRANSFUSION (ID_TRANSFU) on delete restrict on update restrict;

alter table REGISTRO add constraint FK_REGISTRA foreign key (ID_TRANSFU)
      references TRANSFUSION (ID_TRANSFU) on delete restrict on update restrict;

alter table TRANSFUSION add constraint FK_DONA foreign key (CEDULA_CLIENTE)
      references CLIENTE (CEDULA_CLIENTE) on delete restrict on update restrict;

alter table TRANSFUSION add constraint FK_INGRESO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO) on delete restrict on update restrict;

