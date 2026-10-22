/*==============================================================*/
/* DBMS name:      ORACLE Version 19c                           */
/* Created on:     21/10/2026 19:50:42                          */
/*==============================================================*/


alter table ASIGANCIONTURNO
   drop constraint FK_ASIGANCI_RELATIONS_EMPLEADO;

alter table ASIGANCIONTURNO
   drop constraint FK_ASIGANCI_RELATIONS_SUCURSAL;

alter table ASIGANCIONTURNO
   drop constraint FK_ASIGANCI_RELATIONS_TURNO;

alter table BITACORA
   drop constraint FK_BITACORA_RELATIONS_USUARIO;

alter table CLIENTE
   drop constraint FK_CLIENTE_RELATIONS_ESTADO;

alter table CLIENTE
   drop constraint FK_CLIENTE_RELATIONS_PERSONA;

alter table COMPRAPROVEEDOR
   drop constraint FK_COMPRAPR_RELATIONS_PROVEEDO;

alter table COMPRAPROVEEDOR
   drop constraint FK_COMPRAPR_RELATIONS_SUCURSAL;

alter table DETALLECOMPRA
   drop constraint FK_DETALLEC_RELATIONS_COMPRAPR;

alter table DETALLECOMPRA
   drop constraint FK_DETALLEC_RELATIONS_REPUESTO;

alter table DETALLEFACTURA
   drop constraint FK_DETALLEF_RELATIONS_FACTURAC;

alter table DETALLEPAGO
   drop constraint FK_DETALLEP_RELATIONS_PAGO;

alter table DETALLEPAGO
   drop constraint FK_DETALLEP_RELATIONS_METODOPA;

alter table DETALLEREPARACION
   drop constraint FK_DETALLER_RELATIONS_TIPOREPA;

alter table DETALLEREPARACION
   drop constraint FK_DETALLER_RELATIONS_EMPLEADO;

alter table DETALLEREPARACION
   drop constraint FK_DETALLER_RELATIONS_TIEMPOES;

alter table DETALLEREPARACION
   drop constraint FK_DETALLER_RELATIONS_ESTADO;

alter table DETALLEREPARACION
   drop constraint FK_DETALLER_RELATIONS_ORDENSER;

alter table DIRECCION
   drop constraint FK_DIRECCIO_RELATIONS_MUNICIPI;

alter table DISPOSITIVO
   drop constraint FK_DISPOSIT_RELATIONS_TIPODISP;

alter table DISPOSITIVO
   drop constraint FK_DISPOSIT_RELATIONS_CLIENTE;

alter table DISPOSITIVO
   drop constraint FK_DISPOSIT_RELATIONS_MODELO;

alter table DISPOSITIVO
   drop constraint FK_DISPOSIT_RELATIONS_ESTADO;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_RELATIONS_PUESTO;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_RELATIONS_ESTADO;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_RELATIONS_PERSONA;

alter table FACTURACLIENTE
   drop constraint FK_FACTURAC_RELATIONS_ORDENSER;

alter table FACTURACLIENTE
   drop constraint FK_FACTURAC_RELATIONS_ESTADO;

alter table GARANTIA
   drop constraint FK_GARANTIA_RELATIONS_DETALLER;

alter table MODELO
   drop constraint FK_MODELO_RELATIONS_MARCA;

alter table MUNICIPIO
   drop constraint FK_MUNICIPI_RELATIONS_DEPARTAM;

alter table ORDENSERVICIO
   drop constraint FK_ORDENSER_RELATIONS_DISPOSIT;

alter table ORDENSERVICIO
   drop constraint FK_ORDENSER_RELATIONS_EMPLEADO;

alter table ORDENSERVICIO
   drop constraint FK_ORDENSER_RELATIONS_SUCURSAL;

alter table ORDENSERVICIO
   drop constraint FK_ORDENSER_RELATIONS_ESTADO;

alter table ORDENSERVICIO
   drop constraint FK_ORDENSER_RELATIONS_TIEMPOES;

alter table PAGO
   drop constraint FK_PAGO_RELATIONS_FACTURAC;

alter table PAGO
   drop constraint FK_PAGO_RELATIONS_SUCURSAL;

alter table PERSONA
   drop constraint FK_PERSONA_RELATIONS_DIRECCIO;

alter table PERSONA
   drop constraint FK_PERSONA_RELATIONS_TIPODOCI;

alter table PROVEEDOR
   drop constraint FK_PROVEEDO_RELATIONS_DIRECCIO;

alter table PUESTO
   drop constraint FK_PUESTO_RELATIONS_DEPARTAM;

alter table RECLAMOGARANTIA
   drop constraint FK_RECLAMOG_RELATIONS_EMPLEADO;

alter table RECLAMOGARANTIA
   drop constraint FK_RECLAMOG_RELATIONS_GARANTIA;

alter table REPUESTOSUMINISTRO
   drop constraint FK_REPUESTO_RELATIONS_SUCURSAL;

alter table ROLMENU
   drop constraint FK_ROLMENU_RELATIONS_MENU;

alter table ROLMENU
   drop constraint FK_ROLMENU_RELATIONS_ROL;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_RELATIONS_ESTADO;

alter table SUCURSAL
   drop constraint FK_SUCURSAL_RELATIONS_DIRECCIO;

alter table TELEFONO
   drop constraint FK_TELEFONO_RELATIONS_TIPOTELE;

alter table TELEFONO
   drop constraint FK_TELEFONO_RELATIONS_PERSONA;

alter table TIEMPOESTIMADO
   drop constraint FK_TIEMPOES_RELATIONS_TIPOTIEM;

alter table USOREPUESTO
   drop constraint FK_USOREPUE_RELATIONS_DETALLER;

alter table USOREPUESTO
   drop constraint FK_USOREPUE_RELATIONS_REPUESTO;

alter table USUARIO
   drop constraint FK_USUARIO_RELATIONS_EMPLEADO;

alter table USUARIO
   drop constraint FK_USUARIO_RELATIONS_ROL;

drop index RELATIONSHIP_14_FK;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_12_FK;

drop table ASIGANCIONTURNO cascade constraints;

drop index RELATIONSHIP_56_FK;

drop table BITACORA cascade constraints;

drop index RELATIONSHIP_44_FK;

drop index RELATIONSHIP_7_FK;

drop table CLIENTE cascade constraints;

drop index RELATIONSHIP_28_FK;

drop index RELATIONSHIP_27_FK;

drop table COMPRAPROVEEDOR cascade constraints;

drop table DEPARTAMENTO cascade constraints;

drop table DEPARTAMENTOLABORAL cascade constraints;

drop index RELATIONSHIP_30_FK;

drop index RELATIONSHIP_29_FK;

drop table DETALLECOMPRA cascade constraints;

drop index RELATIONSHIP_54_FK;

drop table DETALLEFACTURA cascade constraints;

drop index RELATIONSHIP_58_FK;

drop index RELATIONSHIP_57_FK;

drop table DETALLEPAGO cascade constraints;

drop index RELATIONSHIP_55_FK;

drop index RELATIONSHIP_53_FK;

drop index RELATIONSHIP_52_FK;

drop index RELATIONSHIP_20_FK;

drop index RELATIONSHIP_19_FK;

drop table DETALLEREPARACION cascade constraints;

drop index RELATIONSHIP_2_FK;

drop table DIRECCION cascade constraints;

drop index RELATIONSHIP_47_FK;

drop index RELATIONSHIP_43_FK;

drop index RELATIONSHIP_11_FK;

drop index RELATIONSHIP_10_FK;

drop table DISPOSITIVO cascade constraints;

drop index RELATIONSHIP_45_FK;

drop index RELATIONSHIP_38_FK;

drop index RELATIONSHIP_6_FK;

drop table EMPLEADO cascade constraints;

drop table ESTADO cascade constraints;

drop index RELATIONSHIP_48_FK;

drop index RELATIONSHIP_32_FK;

drop table FACTURACLIENTE cascade constraints;

drop index RELATIONSHIP_22_FK;

drop table GARANTIA cascade constraints;

drop table MARCA cascade constraints;

drop table MENU cascade constraints;

drop table METODOPAGO cascade constraints;

drop index RELATIONSHIP_42_FK;

drop table MODELO cascade constraints;

drop index RELATIONSHIP_1_FK;

drop table MUNICIPIO cascade constraints;

drop index RELATIONSHIP_51_FK;

drop index RELATIONSHIP_49_FK;

drop index RELATIONSHIP_17_FK;

drop index RELATIONSHIP_16_FK;

drop index RELATIONSHIP_15_FK;

drop table ORDENSERVICIO cascade constraints;

drop index RELATIONSHIP_34_FK;

drop index RELATIONSHIP_33_FK;

drop table PAGO cascade constraints;

drop index RELATIONSHIP_41_FK;

drop index RELATIONSHIP_3_FK;

drop table PERSONA cascade constraints;

drop index RELATIONSHIP_25_FK;

drop table PROVEEDOR cascade constraints;

drop index RELATIONSHIP_37_FK;

drop table PUESTO cascade constraints;

drop index RELATIONSHIP_24_FK;

drop index RELATIONSHIP_23_FK;

drop table RECLAMOGARANTIA cascade constraints;

drop index RELATIONSHIP_26_FK;

drop table REPUESTOSUMINISTRO cascade constraints;

drop table ROL cascade constraints;

drop index RELATIONSHIP_60_FK;

drop index RELATIONSHIP_59_FK;

drop table ROLMENU cascade constraints;

drop index RELATIONSHIP_46_FK;

drop index RELATIONSHIP_8_FK;

drop table SUCURSAL cascade constraints;

drop index RELATIONSHIP_5_FK;

drop index RELATIONSHIP_4_FK;

drop table TELEFONO cascade constraints;

drop index RELATIONSHIP_50_FK;

drop table TIEMPOESTIMADO cascade constraints;

drop table TIPODISPOSITIVO cascade constraints;

drop table TIPODOCIDENTIFICACION cascade constraints;

drop table TIPOREPARACION cascade constraints;

drop table TIPOTELEFONO cascade constraints;

drop table TIPOTIEMPO cascade constraints;

drop table TURNO cascade constraints;

drop index RELATIONSHIP_31_FK;

drop index RELATIONSHIP_21_FK;

drop table USOREPUESTO cascade constraints;

drop index RELATIONSHIP_40_FK;

drop index RELATIONSHIP_39_FK;

drop table USUARIO cascade constraints;

/*==============================================================*/
/* Table: ASIGANCIONTURNO                                       */
/*==============================================================*/
create table ASIGANCIONTURNO (
   IDASIGNACION         INTEGER               not null,
   IDEMPLEADO           INTEGER               not null,
   IDSUCURSAL           INTEGER               not null,
   IDTURNO              INTEGER               not null,
   FECHA                DATE,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_ASIGANCIONTURNO primary key (IDASIGNACION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on ASIGANCIONTURNO (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on ASIGANCIONTURNO (
   IDSUCURSAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on ASIGANCIONTURNO (
   IDTURNO ASC
);

/*==============================================================*/
/* Table: BITACORA                                              */
/*==============================================================*/
create table BITACORA (
   IDBITACORA           INTEGER               not null,
   IDUSUARIO            INTEGER               not null,
   FECHAHORA            DATE,
   TABLAAFECTADA        VARCHAR2(100),
   ACCION               VARCHAR2(250),
   VALORANTERIOR        VARCHAR2(250),
   VALORNUEVO           VARCHAR2(250),
   constraint PK_BITACORA primary key (IDBITACORA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_56_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_56_FK on BITACORA (
   IDUSUARIO ASC
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   IDCLIENTE            INTEGER               not null,
   IDPERSONA            INTEGER               not null,
   IDESTADO             INTEGER               not null,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_CLIENTE primary key (IDCLIENTE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on CLIENTE (
   IDPERSONA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_44_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_44_FK on CLIENTE (
   IDESTADO ASC
);

/*==============================================================*/
/* Table: COMPRAPROVEEDOR                                       */
/*==============================================================*/
create table COMPRAPROVEEDOR (
   IDCOMPRA             INTEGER               not null,
   IDPROVEEDOR          INTEGER               not null,
   IDSUCURSAL           INTEGER,
   FECHA                DATE,
   TOTAL                INTEGER,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_COMPRAPROVEEDOR primary key (IDCOMPRA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on COMPRAPROVEEDOR (
   IDPROVEEDOR ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_28_FK on COMPRAPROVEEDOR (
   IDSUCURSAL ASC
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   IDDEPARTAMENTO       INTEGER               not null,
   NOMBREDEPARTAMENTO   VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DEPARTAMENTO primary key (IDDEPARTAMENTO)
);

/*==============================================================*/
/* Table: DEPARTAMENTOLABORAL                                   */
/*==============================================================*/
create table DEPARTAMENTOLABORAL (
   IDDEPARTAMENTO       INTEGER               not null,
   DEPARTAMENTO         VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DEPARTAMENTOLABORAL primary key (IDDEPARTAMENTO)
);

/*==============================================================*/
/* Table: DETALLECOMPRA                                         */
/*==============================================================*/
create table DETALLECOMPRA (
   IDDETALLECOMPRA      INTEGER               not null,
   IDCOMPRA             INTEGER               not null,
   IDREPUESTO           INTEGER               not null,
   CANTIDAD             INTEGER,
   PRECIOUNITARIO       NUMBER(10,2),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DETALLECOMPRA primary key (IDDETALLECOMPRA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on DETALLECOMPRA (
   IDCOMPRA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on DETALLECOMPRA (
   IDREPUESTO ASC
);

/*==============================================================*/
/* Table: DETALLEFACTURA                                        */
/*==============================================================*/
create table DETALLEFACTURA (
   IDDETALLEFACT        INTEGER               not null,
   IDFACTURA            INTEGER               not null,
   DESCRIPCION          VARCHAR2(250),
   SUBTOTAL             NUMBER(10,2),
   IMPUESTOS            NUMBER(10,2),
   TOTAL                NUMBER(10,2),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DETALLEFACTURA primary key (IDDETALLEFACT)
);

/*==============================================================*/
/* Index: RELATIONSHIP_54_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_54_FK on DETALLEFACTURA (
   IDFACTURA ASC
);

/*==============================================================*/
/* Table: DETALLEPAGO                                           */
/*==============================================================*/
create table DETALLEPAGO (
   IDDETALLEPAGO        INTEGER               not null,
   IDPAGO               INTEGER               not null,
   IDMETODO             INTEGER               not null,
   DETALLEPAGO          VARCHAR2(250),
   MONTOPAGADO          NUMBER(10,2),
   constraint PK_DETALLEPAGO primary key (IDDETALLEPAGO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_57_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_57_FK on DETALLEPAGO (
   IDPAGO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_58_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_58_FK on DETALLEPAGO (
   IDMETODO ASC
);

/*==============================================================*/
/* Table: DETALLEREPARACION                                     */
/*==============================================================*/
create table DETALLEREPARACION (
   IDDETALLEREPARACION  INTEGER               not null,
   IDTIPOREPARACION     INTEGER               not null,
   IDEMPLEADO           INTEGER               not null,
   IDTIEMPOESTIMADO     INTEGER               not null,
   IDESTADO             INTEGER               not null,
   IDORDEN              INTEGER,
   OBSERVACIONES        VARCHAR2(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DETALLEREPARACION primary key (IDDETALLEREPARACION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on DETALLEREPARACION (
   IDTIPOREPARACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on DETALLEREPARACION (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_52_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_52_FK on DETALLEREPARACION (
   IDTIEMPOESTIMADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_53_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_53_FK on DETALLEREPARACION (
   IDESTADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_55_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_55_FK on DETALLEREPARACION (
   IDORDEN ASC
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   IDDIRECCION          INTEGER               not null,
   IDMUNICIPIO          INTEGER               not null,
   DIRECCION            VARCHAR2(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DIRECCION primary key (IDDIRECCION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on DIRECCION (
   IDMUNICIPIO ASC
);

/*==============================================================*/
/* Table: DISPOSITIVO                                           */
/*==============================================================*/
create table DISPOSITIVO (
   IDDISPOSITIVO        INTEGER               not null,
   IDTIPODISPOSITIVO    INTEGER               not null,
   IDCLIENTE            INTEGER               not null,
   IDMODELO             INTEGER               not null,
   IDESTADO             INTEGER               not null,
   NOSERIE              VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_DISPOSITIVO primary key (IDDISPOSITIVO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on DISPOSITIVO (
   IDTIPODISPOSITIVO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on DISPOSITIVO (
   IDCLIENTE ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_43_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_43_FK on DISPOSITIVO (
   IDMODELO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_47_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_47_FK on DISPOSITIVO (
   IDESTADO ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   IDEMPLEADO           INTEGER               not null,
   IDPERSONA            INTEGER               not null,
   IDPUESTO             INTEGER               not null,
   IDESTADO             INTEGER               not null,
   FECHAINICIO          DATE,
   FECHAFIN             DATE,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on EMPLEADO (
   IDPERSONA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_38_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_38_FK on EMPLEADO (
   IDPUESTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_45_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_45_FK on EMPLEADO (
   IDESTADO ASC
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   IDESTADO             INTEGER               not null,
   ESTADO               VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_ESTADO primary key (IDESTADO)
);

/*==============================================================*/
/* Table: FACTURACLIENTE                                        */
/*==============================================================*/
create table FACTURACLIENTE (
   IDFACTURA            INTEGER               not null,
   IDORDEN              INTEGER               not null,
   IDESTADO             INTEGER               not null,
   FECHA                DATE,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_FACTURACLIENTE primary key (IDFACTURA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_32_FK on FACTURACLIENTE (
   IDORDEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_48_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_48_FK on FACTURACLIENTE (
   IDESTADO ASC
);

/*==============================================================*/
/* Table: GARANTIA                                              */
/*==============================================================*/
create table GARANTIA (
   IDGARANTIA           INTEGER               not null,
   IDDETALLEREPARACION  INTEGER               not null,
   MESESCOBERTURA       INTEGER,
   FECHAVENCIMIENTO     DATE,
   TERMINOS             CHAR(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_GARANTIA primary key (IDGARANTIA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on GARANTIA (
   IDDETALLEREPARACION ASC
);

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
   IDMARCA              INTEGER               not null,
   MARCA                VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_MARCA primary key (IDMARCA)
);

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
create table MENU (
   IDMENU               INTEGER               not null,
   NOMBREMENU           VARCHAR2(100),
   URL                  VARCHAR2(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_MENU primary key (IDMENU)
);

/*==============================================================*/
/* Table: METODOPAGO                                            */
/*==============================================================*/
create table METODOPAGO (
   IDMETODO             INTEGER               not null,
   DESCRIPCION          VARCHAR2(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_METODOPAGO primary key (IDMETODO)
);

/*==============================================================*/
/* Table: MODELO                                                */
/*==============================================================*/
create table MODELO (
   IDMODELO             INTEGER               not null,
   IDMARCA              INTEGER               not null,
   MODELO               VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_MODELO primary key (IDMODELO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_42_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_42_FK on MODELO (
   IDMARCA ASC
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO (
   IDMUNICIPIO          INTEGER               not null,
   IDDEPARTAMENTO       INTEGER               not null,
   NOMBREMUNICIPIO      VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_MUNICIPIO primary key (IDMUNICIPIO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on MUNICIPIO (
   IDDEPARTAMENTO ASC
);

/*==============================================================*/
/* Table: ORDENSERVICIO                                         */
/*==============================================================*/
create table ORDENSERVICIO (
   IDORDEN              INTEGER               not null,
   IDDISPOSITIVO        INTEGER               not null,
   IDEMPLEADO           INTEGER               not null,
   IDSUCURSAL           INTEGER               not null,
   IDESTADO             INTEGER               not null,
   IDTIEMPOESTIMADO     INTEGER               not null,
   FECHARECEPCION       DATE,
   DIAGNOSTICO          VARCHAR2(250),
   ACEPTAREPARACION     SMALLINT,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_ORDENSERVICIO primary key (IDORDEN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on ORDENSERVICIO (
   IDDISPOSITIVO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on ORDENSERVICIO (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on ORDENSERVICIO (
   IDSUCURSAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_49_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_49_FK on ORDENSERVICIO (
   IDESTADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_51_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_51_FK on ORDENSERVICIO (
   IDTIEMPOESTIMADO ASC
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO (
   IDPAGO               INTEGER               not null,
   IDFACTURA            INTEGER               not null,
   IDSUCURSAL           INTEGER               not null,
   FECHA                DATE,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_PAGO primary key (IDPAGO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_33_FK on PAGO (
   IDFACTURA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_34_FK on PAGO (
   IDSUCURSAL ASC
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDPERSONA            INTEGER               not null,
   IDDIRECCION          INTEGER               not null,
   IDTIPODOC            INTEGER               not null,
   NOMBRE1              VARCHAR2(100),
   NOMBRE2              VARCHAR2(100),
   APELLIDO1            VARCHAR2(100),
   APELLIDO2            VARCHAR2(100),
   FECHANACIMIENTO      DATE,
   NOIDENTIFICACION     VARCHAR2(100),
   NIT                  VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_PERSONA primary key (IDPERSONA),
   constraint AK_IDENTIFIER_2_PERSONA unique (NIT)
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on PERSONA (
   IDDIRECCION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_41_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_41_FK on PERSONA (
   IDTIPODOC ASC
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   IDPROVEEDOR          INTEGER               not null,
   IDDIRECCION          INTEGER               not null,
   NOMBREPROVEEDOR      VARCHAR2(250),
   CONTACTO             INTEGER,
   NIT                  VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_PROVEEDOR primary key (IDPROVEEDOR)
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_25_FK on PROVEEDOR (
   IDDIRECCION ASC
);

/*==============================================================*/
/* Table: PUESTO                                                */
/*==============================================================*/
create table PUESTO (
   IDPUESTO             INTEGER               not null,
   IDDEPARTAMENTO       INTEGER               not null,
   PUESTO               VARCHAR2(100),
   DESCRIPCION          VARCHAR2(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_PUESTO primary key (IDPUESTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_37_FK on PUESTO (
   IDDEPARTAMENTO ASC
);

/*==============================================================*/
/* Table: RECLAMOGARANTIA                                       */
/*==============================================================*/
create table RECLAMOGARANTIA (
   IDRECLAMO            INTEGER               not null,
   IDEMPLEADO           INTEGER               not null,
   IDGARANTIA           INTEGER               not null,
   FECHARECLAMO         DATE,
   DESCRIPCIONFALLA     VARCHAR2(250),
   RESOLUCION           VARCHAR2(250),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_RECLAMOGARANTIA primary key (IDRECLAMO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on RECLAMOGARANTIA (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on RECLAMOGARANTIA (
   IDGARANTIA ASC
);

/*==============================================================*/
/* Table: REPUESTOSUMINISTRO                                    */
/*==============================================================*/
create table REPUESTOSUMINISTRO (
   IDREPUESTO           INTEGER               not null,
   IDSUCURSAL           INTEGER               not null,
   DESCRIPCION          VARCHAR2(250),
   COSTOCOMPRA          NUMBER(10,2),
   PRECIOVENTA          NUMBER(10,2),
   STOCKACTUAL          INTEGER,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_REPUESTOSUMINISTRO primary key (IDREPUESTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on REPUESTOSUMINISTRO (
   IDSUCURSAL ASC
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   IDROL                INTEGER               not null,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   NOMBREROL            VARCHAR2(100),
   constraint PK_ROL primary key (IDROL)
);

/*==============================================================*/
/* Table: ROLMENU                                               */
/*==============================================================*/
create table ROLMENU (
   IDROLMENU            INTEGER               not null,
   IDMENU               INTEGER               not null,
   IDROL                INTEGER               not null,
   PERMISOLECTURA       SMALLINT,
   PERMISOESCRITURA     SMALLINT,
   PERMISOEDICION       SMALLINT,
   PERMISOBORRAR        SMALLINT,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_ROLMENU primary key (IDROLMENU)
);

/*==============================================================*/
/* Index: RELATIONSHIP_59_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_59_FK on ROLMENU (
   IDMENU ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_60_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_60_FK on ROLMENU (
   IDROL ASC
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   IDSUCURSAL           INTEGER               not null,
   IDDIRECCION          INTEGER               not null,
   IDESTADO             INTEGER               not null,
   NOMBRESUCURSAL       VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_SUCURSAL primary key (IDSUCURSAL)
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on SUCURSAL (
   IDDIRECCION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_46_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_46_FK on SUCURSAL (
   IDESTADO ASC
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   IDTELEFONO           INTEGER               not null,
   IDTIPOTELEFONO       INTEGER               not null,
   IDPERSONA            INTEGER               not null,
   TELEFONO             INTEGER,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TELEFONO primary key (IDTELEFONO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on TELEFONO (
   IDTIPOTELEFONO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on TELEFONO (
   IDPERSONA ASC
);

/*==============================================================*/
/* Table: TIEMPOESTIMADO                                        */
/*==============================================================*/
create table TIEMPOESTIMADO (
   IDTIEMPOESTIMADO     INTEGER               not null,
   IDTIPOTIEMPO         INTEGER,
   CANTIDAD             INTEGER,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TIEMPOESTIMADO primary key (IDTIEMPOESTIMADO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_50_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_50_FK on TIEMPOESTIMADO (
   IDTIPOTIEMPO ASC
);

/*==============================================================*/
/* Table: TIPODISPOSITIVO                                       */
/*==============================================================*/
create table TIPODISPOSITIVO (
   IDTIPODISPOSITIVO    INTEGER               not null,
   CATEGORIA            VARCHAR2(100),
   COSTOREVISION        NUMBER(10,2),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TIPODISPOSITIVO primary key (IDTIPODISPOSITIVO)
);

/*==============================================================*/
/* Table: TIPODOCIDENTIFICACION                                 */
/*==============================================================*/
create table TIPODOCIDENTIFICACION (
   IDTIPODOC            INTEGER               not null,
   TIPODOCUMENTO        VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TIPODOCIDENTIFICACION primary key (IDTIPODOC)
);

/*==============================================================*/
/* Table: TIPOREPARACION                                        */
/*==============================================================*/
create table TIPOREPARACION (
   IDTIPOREPARACION     INTEGER               not null,
   DESCRIPCION          VARCHAR2(250),
   COSTOBASE            NUMBER(10,2),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TIPOREPARACION primary key (IDTIPOREPARACION)
);

/*==============================================================*/
/* Table: TIPOTELEFONO                                          */
/*==============================================================*/
create table TIPOTELEFONO (
   IDTIPOTELEFONO       INTEGER               not null,
   TIPOTELEFONO         VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TIPOTELEFONO primary key (IDTIPOTELEFONO)
);

/*==============================================================*/
/* Table: TIPOTIEMPO                                            */
/*==============================================================*/
create table TIPOTIEMPO (
   IDTIPOTIEMPO         INTEGER               not null,
   TIPOTIEMPO           VARCHAR2(100),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TIPOTIEMPO primary key (IDTIPOTIEMPO)
);

/*==============================================================*/
/* Table: TURNO                                                 */
/*==============================================================*/
create table TURNO (
   IDTURNO              INTEGER               not null,
   DESCRIPCION          VARCHAR2(100),
   HORAINICIO           DATE,
   HORAFIN              DATE,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_TURNO primary key (IDTURNO)
);

/*==============================================================*/
/* Table: USOREPUESTO                                           */
/*==============================================================*/
create table USOREPUESTO (
   IDUSO                INTEGER               not null,
   IDDETALLEREPARACION  INTEGER               not null,
   IDREPUESTO           INTEGER               not null,
   CANTIDAD             INTEGER,
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_USOREPUESTO primary key (IDUSO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on USOREPUESTO (
   IDDETALLEREPARACION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_31_FK on USOREPUESTO (
   IDREPUESTO ASC
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   IDUSUARIO            INTEGER               not null,
   IDEMPLEADO           INTEGER               not null,
   IDROL                INTEGER               not null,
   USUARIO              VARCHAR2(250),
   PASSWORD             VARCHAR2(1000),
   USUARIOCREACION      VARCHAR2(100),
   FECHACREACION        DATE,
   USUATIOMOD           VARCHAR2(100),
   FECHAMOD             DATE,
   constraint PK_USUARIO primary key (IDUSUARIO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_39_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_39_FK on USUARIO (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_40_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_40_FK on USUARIO (
   IDROL ASC
);

alter table ASIGANCIONTURNO
   add constraint FK_ASIGANCI_RELATIONS_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table ASIGANCIONTURNO
   add constraint FK_ASIGANCI_RELATIONS_SUCURSAL foreign key (IDSUCURSAL)
      references SUCURSAL (IDSUCURSAL);

alter table ASIGANCIONTURNO
   add constraint FK_ASIGANCI_RELATIONS_TURNO foreign key (IDTURNO)
      references TURNO (IDTURNO);

alter table BITACORA
   add constraint FK_BITACORA_RELATIONS_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO);

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table COMPRAPROVEEDOR
   add constraint FK_COMPRAPR_RELATIONS_PROVEEDO foreign key (IDPROVEEDOR)
      references PROVEEDOR (IDPROVEEDOR);

alter table COMPRAPROVEEDOR
   add constraint FK_COMPRAPR_RELATIONS_SUCURSAL foreign key (IDSUCURSAL)
      references SUCURSAL (IDSUCURSAL);

alter table DETALLECOMPRA
   add constraint FK_DETALLEC_RELATIONS_COMPRAPR foreign key (IDCOMPRA)
      references COMPRAPROVEEDOR (IDCOMPRA);

alter table DETALLECOMPRA
   add constraint FK_DETALLEC_RELATIONS_REPUESTO foreign key (IDREPUESTO)
      references REPUESTOSUMINISTRO (IDREPUESTO);

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_FACTURAC foreign key (IDFACTURA)
      references FACTURACLIENTE (IDFACTURA);

alter table DETALLEPAGO
   add constraint FK_DETALLEP_RELATIONS_PAGO foreign key (IDPAGO)
      references PAGO (IDPAGO);

alter table DETALLEPAGO
   add constraint FK_DETALLEP_RELATIONS_METODOPA foreign key (IDMETODO)
      references METODOPAGO (IDMETODO);

alter table DETALLEREPARACION
   add constraint FK_DETALLER_RELATIONS_TIPOREPA foreign key (IDTIPOREPARACION)
      references TIPOREPARACION (IDTIPOREPARACION);

alter table DETALLEREPARACION
   add constraint FK_DETALLER_RELATIONS_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table DETALLEREPARACION
   add constraint FK_DETALLER_RELATIONS_TIEMPOES foreign key (IDTIEMPOESTIMADO)
      references TIEMPOESTIMADO (IDTIEMPOESTIMADO);

alter table DETALLEREPARACION
   add constraint FK_DETALLER_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table DETALLEREPARACION
   add constraint FK_DETALLER_RELATIONS_ORDENSER foreign key (IDORDEN)
      references ORDENSERVICIO (IDORDEN);

alter table DIRECCION
   add constraint FK_DIRECCIO_RELATIONS_MUNICIPI foreign key (IDMUNICIPIO)
      references MUNICIPIO (IDMUNICIPIO);

alter table DISPOSITIVO
   add constraint FK_DISPOSIT_RELATIONS_TIPODISP foreign key (IDTIPODISPOSITIVO)
      references TIPODISPOSITIVO (IDTIPODISPOSITIVO);

alter table DISPOSITIVO
   add constraint FK_DISPOSIT_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE);

alter table DISPOSITIVO
   add constraint FK_DISPOSIT_RELATIONS_MODELO foreign key (IDMODELO)
      references MODELO (IDMODELO);

alter table DISPOSITIVO
   add constraint FK_DISPOSIT_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_PUESTO foreign key (IDPUESTO)
      references PUESTO (IDPUESTO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table FACTURACLIENTE
   add constraint FK_FACTURAC_RELATIONS_ORDENSER foreign key (IDORDEN)
      references ORDENSERVICIO (IDORDEN);

alter table FACTURACLIENTE
   add constraint FK_FACTURAC_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table GARANTIA
   add constraint FK_GARANTIA_RELATIONS_DETALLER foreign key (IDDETALLEREPARACION)
      references DETALLEREPARACION (IDDETALLEREPARACION);

alter table MODELO
   add constraint FK_MODELO_RELATIONS_MARCA foreign key (IDMARCA)
      references MARCA (IDMARCA);

alter table MUNICIPIO
   add constraint FK_MUNICIPI_RELATIONS_DEPARTAM foreign key (IDDEPARTAMENTO)
      references DEPARTAMENTO (IDDEPARTAMENTO);

alter table ORDENSERVICIO
   add constraint FK_ORDENSER_RELATIONS_DISPOSIT foreign key (IDDISPOSITIVO)
      references DISPOSITIVO (IDDISPOSITIVO);

alter table ORDENSERVICIO
   add constraint FK_ORDENSER_RELATIONS_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table ORDENSERVICIO
   add constraint FK_ORDENSER_RELATIONS_SUCURSAL foreign key (IDSUCURSAL)
      references SUCURSAL (IDSUCURSAL);

alter table ORDENSERVICIO
   add constraint FK_ORDENSER_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table ORDENSERVICIO
   add constraint FK_ORDENSER_RELATIONS_TIEMPOES foreign key (IDTIEMPOESTIMADO)
      references TIEMPOESTIMADO (IDTIEMPOESTIMADO);

alter table PAGO
   add constraint FK_PAGO_RELATIONS_FACTURAC foreign key (IDFACTURA)
      references FACTURACLIENTE (IDFACTURA);

alter table PAGO
   add constraint FK_PAGO_RELATIONS_SUCURSAL foreign key (IDSUCURSAL)
      references SUCURSAL (IDSUCURSAL);

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_DIRECCIO foreign key (IDDIRECCION)
      references DIRECCION (IDDIRECCION);

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_TIPODOCI foreign key (IDTIPODOC)
      references TIPODOCIDENTIFICACION (IDTIPODOC);

alter table PROVEEDOR
   add constraint FK_PROVEEDO_RELATIONS_DIRECCIO foreign key (IDDIRECCION)
      references DIRECCION (IDDIRECCION);

alter table PUESTO
   add constraint FK_PUESTO_RELATIONS_DEPARTAM foreign key (IDDEPARTAMENTO)
      references DEPARTAMENTOLABORAL (IDDEPARTAMENTO);

alter table RECLAMOGARANTIA
   add constraint FK_RECLAMOG_RELATIONS_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table RECLAMOGARANTIA
   add constraint FK_RECLAMOG_RELATIONS_GARANTIA foreign key (IDGARANTIA)
      references GARANTIA (IDGARANTIA);

alter table REPUESTOSUMINISTRO
   add constraint FK_REPUESTO_RELATIONS_SUCURSAL foreign key (IDSUCURSAL)
      references SUCURSAL (IDSUCURSAL);

alter table ROLMENU
   add constraint FK_ROLMENU_RELATIONS_MENU foreign key (IDMENU)
      references MENU (IDMENU);

alter table ROLMENU
   add constraint FK_ROLMENU_RELATIONS_ROL foreign key (IDROL)
      references ROL (IDROL);

alter table SUCURSAL
   add constraint FK_SUCURSAL_RELATIONS_ESTADO foreign key (IDESTADO)
      references ESTADO (IDESTADO);

alter table SUCURSAL
   add constraint FK_SUCURSAL_RELATIONS_DIRECCIO foreign key (IDDIRECCION)
      references DIRECCION (IDDIRECCION);

alter table TELEFONO
   add constraint FK_TELEFONO_RELATIONS_TIPOTELE foreign key (IDTIPOTELEFONO)
      references TIPOTELEFONO (IDTIPOTELEFONO);

alter table TELEFONO
   add constraint FK_TELEFONO_RELATIONS_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table TIEMPOESTIMADO
   add constraint FK_TIEMPOES_RELATIONS_TIPOTIEM foreign key (IDTIPOTIEMPO)
      references TIPOTIEMPO (IDTIPOTIEMPO);

alter table USOREPUESTO
   add constraint FK_USOREPUE_RELATIONS_DETALLER foreign key (IDDETALLEREPARACION)
      references DETALLEREPARACION (IDDETALLEREPARACION);

alter table USOREPUESTO
   add constraint FK_USOREPUE_RELATIONS_REPUESTO foreign key (IDREPUESTO)
      references REPUESTOSUMINISTRO (IDREPUESTO);

alter table USUARIO
   add constraint FK_USUARIO_RELATIONS_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table USUARIO
   add constraint FK_USUARIO_RELATIONS_ROL foreign key (IDROL)
      references ROL (IDROL);

