/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     15/03/2022 0:32:07                           */
/*==============================================================*/


drop table if exists CALIFICACION;

drop table if exists CLIENTE;

drop table if exists COTIZACION;

drop table if exists EXPERTO_SERVICIO;

drop table if exists HISTORIAL_EXPERTO_LIMPIEZA;

drop table if exists LUGAR;

/*==============================================================*/
/* Table: CALIFICACION                                          */
/*==============================================================*/
create table CALIFICACION
(
   ID_COTIZACION        int not null,
   ID_CLIENTE           int not null,
   PUNTUACION           int not null,
   COMENTARIO           char(255)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   ID_CLIENTE           int not null,
   NAME                 int,
   CELULAR              int,
   CEDULA               int,
   primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: COTIZACION                                            */
/*==============================================================*/
create table COTIZACION
(
   ID_COTIZACION        int not null,
   ID_LUGAR             int not null,
   ID_CLIENTE           int not null,
   primary key (ID_COTIZACION)
);

/*==============================================================*/
/* Table: EXPERTO_SERVICIO                                      */
/*==============================================================*/
create table EXPERTO_SERVICIO
(
   NAME                 int not null,
   CELULAR              int not null,
   CEDULA               int not null,
   ID_EXPERTO_SERVICIO  int not null,
   PUNTUACION           float not null,
   primary key (ID_EXPERTO_SERVICIO)
);

/*==============================================================*/
/* Table: HISTORIAL_EXPERTO_LIMPIEZA                            */
/*==============================================================*/
create table HISTORIAL_EXPERTO_LIMPIEZA
(
   ID_EXPERTO_SERVICIO  int not null,
   ID_COTIZACION        int not null,
   FECHA                date not null,
   PLAN_SERVICIO        char(255) not null,
   _HORAS_SERVICIO      int not null,
   PRIORIDAD            bool not null,
   primary key (ID_EXPERTO_SERVICIO, ID_COTIZACION)
);

/*==============================================================*/
/* Table: LUGAR                                                 */
/*==============================================================*/
create table LUGAR
(
   ID_LUGAR             int not null,
   LUGAR                char(255) not null,
   DIRECCION            char(255) not null,
   primary key (ID_LUGAR)
);

alter table CALIFICACION add constraint FK_RELATIONSHIP_4 foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE) on delete restrict on update restrict;

alter table CALIFICACION add constraint FK_RELATIONSHIP_5 foreign key (ID_COTIZACION)
      references COTIZACION (ID_COTIZACION) on delete restrict on update restrict;

alter table COTIZACION add constraint FK_RELATIONSHIP_1 foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE) on delete restrict on update restrict;

alter table COTIZACION add constraint FK_RELATIONSHIP_6 foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR) on delete restrict on update restrict;

alter table HISTORIAL_EXPERTO_LIMPIEZA add constraint FK_RELATIONSHIP_2 foreign key (ID_EXPERTO_SERVICIO)
      references EXPERTO_SERVICIO (ID_EXPERTO_SERVICIO) on delete restrict on update restrict;

alter table HISTORIAL_EXPERTO_LIMPIEZA add constraint FK_RELATIONSHIP_3 foreign key (ID_COTIZACION)
      references COTIZACION (ID_COTIZACION) on delete restrict on update restrict;

