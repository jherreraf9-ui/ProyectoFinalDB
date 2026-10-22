-- ====================================================
-- HEADER: PKG_SEGURIDAD
-- ====================================================
CREATE OR REPLACE PACKAGE PKG_SEGURIDAD AS
    -- CRUD MENU
    PROCEDURE SP_INSERTAR_MENU(p_nombremenu IN VARCHAR2, p_url IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_MENU(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_MENU(p_idmenu IN INTEGER, p_nombremenu IN VARCHAR2, p_url IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_MENU(p_idmenu IN INTEGER);

    -- CRUD ROL
    PROCEDURE SP_INSERTAR_ROL(p_nombrerol IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_ROL(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_ROL(p_idrol IN INTEGER, p_nombrerol IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_ROL(p_idrol IN INTEGER);

    -- CRUD ROLMENU
    PROCEDURE SP_INSERTAR_ROLMENU(p_idmenu IN INTEGER, p_idrol IN INTEGER, p_permisolectura IN SMALLINT, p_permisoescritura IN SMALLINT, p_permisoedicion IN SMALLINT, p_permisoborrar IN SMALLINT, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_ROLMENU(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_ROLMENU(p_idrolmenu IN INTEGER, p_idmenu IN INTEGER, p_idrol IN INTEGER, p_permisolectura IN SMALLINT, p_permisoescritura IN SMALLINT, p_permisoedicion IN SMALLINT, p_permisoborrar IN SMALLINT, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_ROLMENU(p_idrolmenu IN INTEGER);

    -- CRUD USUARIO
    PROCEDURE SP_INSERTAR_USUARIO(p_idempleado IN INTEGER, p_idrol IN INTEGER, p_usuario_login IN VARCHAR2, p_password IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_USUARIO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_USUARIO(p_idusuario IN INTEGER, p_idempleado IN INTEGER, p_idrol IN INTEGER, p_usuario_login IN VARCHAR2, p_password IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_USUARIO(p_idusuario IN INTEGER);

END PKG_SEGURIDAD;
/

-- ====================================================
-- HEADER: PKG_RRHH
-- ====================================================
CREATE OR REPLACE PACKAGE PKG_RRHH AS
    -- CRUD ASIGANCIONTURNO
    PROCEDURE SP_INSERTAR_ASIGANCIONTURNO(p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idturno IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_ASIGANCIONTURNO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_ASIGANCIONTURNO(p_idasignacion IN INTEGER, p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idturno IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_ASIGANCIONTURNO(p_idasignacion IN INTEGER);

    -- CRUD DEPARTAMENTOLABORAL
    PROCEDURE SP_INSERTAR_DEPARTAMENTOLABORAL(p_departamento IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DEPARTAMENTOLABORAL(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DEPARTAMENTOLABORAL(p_iddepartamento IN INTEGER, p_departamento IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DEPARTAMENTOLABORAL(p_iddepartamento IN INTEGER);

    -- CRUD EMPLEADO
    PROCEDURE SP_INSERTAR_EMPLEADO(p_idpersona IN INTEGER, p_idpuesto IN INTEGER, p_idestado IN INTEGER, p_fechainicio IN DATE, p_fechafin IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_EMPLEADO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_EMPLEADO(p_idempleado IN INTEGER, p_idpersona IN INTEGER, p_idpuesto IN INTEGER, p_idestado IN INTEGER, p_fechainicio IN DATE, p_fechafin IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_EMPLEADO(p_idempleado IN INTEGER);

    -- CRUD PUESTO
    PROCEDURE SP_INSERTAR_PUESTO(p_iddepartamento IN INTEGER, p_puesto IN VARCHAR2, p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_PUESTO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_PUESTO(p_idpuesto IN INTEGER, p_iddepartamento IN INTEGER, p_puesto IN VARCHAR2, p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_PUESTO(p_idpuesto IN INTEGER);

    -- CRUD TURNO
    PROCEDURE SP_INSERTAR_TURNO(p_descripcion IN VARCHAR2, p_horainicio IN DATE, p_horafin IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TURNO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TURNO(p_idturno IN INTEGER, p_descripcion IN VARCHAR2, p_horainicio IN DATE, p_horafin IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TURNO(p_idturno IN INTEGER);

END PKG_RRHH;
/

-- ====================================================
-- HEADER: PKG_INVENTARIO
-- ====================================================
CREATE OR REPLACE PACKAGE PKG_INVENTARIO AS
    -- CRUD COMPRAPROVEEDOR
    PROCEDURE SP_INSERTAR_COMPRAPROVEEDOR(p_idproveedor IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_total IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_COMPRAPROVEEDOR(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_COMPRAPROVEEDOR(p_idcompra IN INTEGER, p_idproveedor IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_total IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_COMPRAPROVEEDOR(p_idcompra IN INTEGER);

    -- CRUD DETALLECOMPRA
    PROCEDURE SP_INSERTAR_DETALLECOMPRA(p_idcompra IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_preciounitario IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DETALLECOMPRA(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DETALLECOMPRA(p_iddetallecompra IN INTEGER, p_idcompra IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_preciounitario IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DETALLECOMPRA(p_iddetallecompra IN INTEGER);

    -- CRUD MARCA
    PROCEDURE SP_INSERTAR_MARCA(p_marca IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_MARCA(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_MARCA(p_idmarca IN INTEGER, p_marca IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_MARCA(p_idmarca IN INTEGER);

    -- CRUD MODELO
    PROCEDURE SP_INSERTAR_MODELO(p_idmarca IN INTEGER, p_modelo IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_MODELO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_MODELO(p_idmodelo IN INTEGER, p_idmarca IN INTEGER, p_modelo IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_MODELO(p_idmodelo IN INTEGER);

    -- CRUD PROVEEDOR
    PROCEDURE SP_INSERTAR_PROVEEDOR(p_iddireccion IN INTEGER, p_nombreproveedor IN VARCHAR2, p_contacto IN INTEGER, p_nit IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_PROVEEDOR(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_PROVEEDOR(p_idproveedor IN INTEGER, p_iddireccion IN INTEGER, p_nombreproveedor IN VARCHAR2, p_contacto IN INTEGER, p_nit IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_PROVEEDOR(p_idproveedor IN INTEGER);

    -- CRUD REPUESTOSUMINISTRO
    PROCEDURE SP_INSERTAR_REPUESTOSUMINISTRO(p_idsucursal IN INTEGER, p_descripcion IN VARCHAR2, p_costocompra IN NUMBER, p_precioventa IN NUMBER, p_stockactual IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_REPUESTOSUMINISTRO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_REPUESTOSUMINISTRO(p_idrepuesto IN INTEGER, p_idsucursal IN INTEGER, p_descripcion IN VARCHAR2, p_costocompra IN NUMBER, p_precioventa IN NUMBER, p_stockactual IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_REPUESTOSUMINISTRO(p_idrepuesto IN INTEGER);

END PKG_INVENTARIO;
/

-- ====================================================
-- HEADER: PKG_TALLER
-- ====================================================
CREATE OR REPLACE PACKAGE PKG_TALLER AS
    -- CRUD DETALLEREPARACION
    PROCEDURE SP_INSERTAR_DETALLEREPARACION(p_idtiporeparacion IN INTEGER, p_idempleado IN INTEGER, p_idtiempoestimado IN INTEGER, p_idestado IN INTEGER, p_idorden IN INTEGER, p_observaciones IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DETALLEREPARACION(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DETALLEREPARACION(p_iddetallereparacion IN INTEGER, p_idtiporeparacion IN INTEGER, p_idempleado IN INTEGER, p_idtiempoestimado IN INTEGER, p_idestado IN INTEGER, p_idorden IN INTEGER, p_observaciones IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DETALLEREPARACION(p_iddetallereparacion IN INTEGER);

    -- CRUD DISPOSITIVO
    PROCEDURE SP_INSERTAR_DISPOSITIVO(p_idtipodispositivo IN INTEGER, p_idcliente IN INTEGER, p_idmodelo IN INTEGER, p_idestado IN INTEGER, p_noserie IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DISPOSITIVO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DISPOSITIVO(p_iddispositivo IN INTEGER, p_idtipodispositivo IN INTEGER, p_idcliente IN INTEGER, p_idmodelo IN INTEGER, p_idestado IN INTEGER, p_noserie IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DISPOSITIVO(p_iddispositivo IN INTEGER);

    -- CRUD GARANTIA
    PROCEDURE SP_INSERTAR_GARANTIA(p_iddetallereparacion IN INTEGER, p_mesescobertura IN INTEGER, p_fechavencimiento IN DATE, p_terminos IN CHAR, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_GARANTIA(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_GARANTIA(p_idgarantia IN INTEGER, p_iddetallereparacion IN INTEGER, p_mesescobertura IN INTEGER, p_fechavencimiento IN DATE, p_terminos IN CHAR, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_GARANTIA(p_idgarantia IN INTEGER);

    -- CRUD ORDENSERVICIO
    PROCEDURE SP_INSERTAR_ORDENSERVICIO(p_iddispositivo IN INTEGER, p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idestado IN INTEGER, p_idtiempoestimado IN INTEGER, p_fecharecepcion IN DATE, p_diagnostico IN VARCHAR2, p_aceptareparacion IN SMALLINT, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_ORDENSERVICIO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_ORDENSERVICIO(p_idorden IN INTEGER, p_iddispositivo IN INTEGER, p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idestado IN INTEGER, p_idtiempoestimado IN INTEGER, p_fecharecepcion IN DATE, p_diagnostico IN VARCHAR2, p_aceptareparacion IN SMALLINT, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_ORDENSERVICIO(p_idorden IN INTEGER);

    -- CRUD RECLAMOGARANTIA
    PROCEDURE SP_INSERTAR_RECLAMOGARANTIA(p_idempleado IN INTEGER, p_idgarantia IN INTEGER, p_fechareclamo IN DATE, p_descripcionfalla IN VARCHAR2, p_resolucion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_RECLAMOGARANTIA(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_RECLAMOGARANTIA(p_idreclamo IN INTEGER, p_idempleado IN INTEGER, p_idgarantia IN INTEGER, p_fechareclamo IN DATE, p_descripcionfalla IN VARCHAR2, p_resolucion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_RECLAMOGARANTIA(p_idreclamo IN INTEGER);

    -- CRUD TIEMPOESTIMADO
    PROCEDURE SP_INSERTAR_TIEMPOESTIMADO(p_idtipotiempo IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TIEMPOESTIMADO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TIEMPOESTIMADO(p_idtiempoestimado IN INTEGER, p_idtipotiempo IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TIEMPOESTIMADO(p_idtiempoestimado IN INTEGER);

    -- CRUD TIPODISPOSITIVO
    PROCEDURE SP_INSERTAR_TIPODISPOSITIVO(p_categoria IN VARCHAR2, p_costorevision IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TIPODISPOSITIVO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TIPODISPOSITIVO(p_idtipodispositivo IN INTEGER, p_categoria IN VARCHAR2, p_costorevision IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TIPODISPOSITIVO(p_idtipodispositivo IN INTEGER);

    -- CRUD TIPOREPARACION
    PROCEDURE SP_INSERTAR_TIPOREPARACION(p_descripcion IN VARCHAR2, p_costobase IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TIPOREPARACION(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TIPOREPARACION(p_idtiporeparacion IN INTEGER, p_descripcion IN VARCHAR2, p_costobase IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TIPOREPARACION(p_idtiporeparacion IN INTEGER);

    -- CRUD TIPOTIEMPO
    PROCEDURE SP_INSERTAR_TIPOTIEMPO(p_tipotiempo IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TIPOTIEMPO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TIPOTIEMPO(p_idtipotiempo IN INTEGER, p_tipotiempo IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TIPOTIEMPO(p_idtipotiempo IN INTEGER);

    -- CRUD USOREPUESTO
    PROCEDURE SP_INSERTAR_USOREPUESTO(p_iddetallereparacion IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_USOREPUESTO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_USOREPUESTO(p_iduso IN INTEGER, p_iddetallereparacion IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_USOREPUESTO(p_iduso IN INTEGER);

END PKG_TALLER;
/

-- ====================================================
-- HEADER: PKG_VENTAS
-- ====================================================
CREATE OR REPLACE PACKAGE PKG_VENTAS AS
    -- CRUD DETALLEFACTURA
    PROCEDURE SP_INSERTAR_DETALLEFACTURA(p_idfactura IN INTEGER, p_descripcion IN VARCHAR2, p_subtotal IN NUMBER, p_impuestos IN NUMBER, p_total IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DETALLEFACTURA(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DETALLEFACTURA(p_iddetallefact IN INTEGER, p_idfactura IN INTEGER, p_descripcion IN VARCHAR2, p_subtotal IN NUMBER, p_impuestos IN NUMBER, p_total IN NUMBER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DETALLEFACTURA(p_iddetallefact IN INTEGER);

    -- CRUD DETALLEPAGO
    PROCEDURE SP_INSERTAR_DETALLEPAGO(p_idpago IN INTEGER, p_idmetodo IN INTEGER, p_detallepago IN VARCHAR2, p_montopagado IN NUMBER);
    PROCEDURE SP_LEER_DETALLEPAGO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DETALLEPAGO(p_iddetallepago IN INTEGER, p_idpago IN INTEGER, p_idmetodo IN INTEGER, p_detallepago IN VARCHAR2, p_montopagado IN NUMBER);
    PROCEDURE SP_ELIMINAR_DETALLEPAGO(p_iddetallepago IN INTEGER);

    -- CRUD FACTURACLIENTE
    PROCEDURE SP_INSERTAR_FACTURACLIENTE(p_idorden IN INTEGER, p_idestado IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_FACTURACLIENTE(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_FACTURACLIENTE(p_idfactura IN INTEGER, p_idorden IN INTEGER, p_idestado IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_FACTURACLIENTE(p_idfactura IN INTEGER);

    -- CRUD METODOPAGO
    PROCEDURE SP_INSERTAR_METODOPAGO(p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_METODOPAGO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_METODOPAGO(p_idmetodo IN INTEGER, p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_METODOPAGO(p_idmetodo IN INTEGER);

    -- CRUD PAGO
    PROCEDURE SP_INSERTAR_PAGO(p_idfactura IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_PAGO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_PAGO(p_idpago IN INTEGER, p_idfactura IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_PAGO(p_idpago IN INTEGER);

END PKG_VENTAS;
/

-- ====================================================
-- HEADER: PKG_GENERAL
-- ====================================================
CREATE OR REPLACE PACKAGE PKG_GENERAL AS
    -- CRUD CLIENTE
    PROCEDURE SP_INSERTAR_CLIENTE(p_idpersona IN INTEGER, p_idestado IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_CLIENTE(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_CLIENTE(p_idcliente IN INTEGER, p_idpersona IN INTEGER, p_idestado IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_CLIENTE(p_idcliente IN INTEGER);

    -- CRUD DEPARTAMENTO
    PROCEDURE SP_INSERTAR_DEPARTAMENTO(p_nombredepartamento IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DEPARTAMENTO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DEPARTAMENTO(p_iddepartamento IN INTEGER, p_nombredepartamento IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DEPARTAMENTO(p_iddepartamento IN INTEGER);

    -- CRUD DIRECCION
    PROCEDURE SP_INSERTAR_DIRECCION(p_idmunicipio IN INTEGER, p_direccion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_DIRECCION(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_DIRECCION(p_iddireccion IN INTEGER, p_idmunicipio IN INTEGER, p_direccion IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_DIRECCION(p_iddireccion IN INTEGER);

    -- CRUD ESTADO
    PROCEDURE SP_INSERTAR_ESTADO(p_estado IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_ESTADO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_ESTADO(p_idestado IN INTEGER, p_estado IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_ESTADO(p_idestado IN INTEGER);

    -- CRUD MUNICIPIO
    PROCEDURE SP_INSERTAR_MUNICIPIO(p_iddepartamento IN INTEGER, p_nombremunicipio IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_MUNICIPIO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_MUNICIPIO(p_idmunicipio IN INTEGER, p_iddepartamento IN INTEGER, p_nombremunicipio IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_MUNICIPIO(p_idmunicipio IN INTEGER);

    -- CRUD PERSONA
    PROCEDURE SP_INSERTAR_PERSONA(p_iddireccion IN INTEGER, p_idtipodoc IN INTEGER, p_nombre1 IN VARCHAR2, p_nombre2 IN VARCHAR2, p_apellido1 IN VARCHAR2, p_apellido2 IN VARCHAR2, p_fechanacimiento IN DATE, p_noidentificacion IN VARCHAR2, p_nit IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_PERSONA(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_PERSONA(p_idpersona IN INTEGER, p_iddireccion IN INTEGER, p_idtipodoc IN INTEGER, p_nombre1 IN VARCHAR2, p_nombre2 IN VARCHAR2, p_apellido1 IN VARCHAR2, p_apellido2 IN VARCHAR2, p_fechanacimiento IN DATE, p_noidentificacion IN VARCHAR2, p_nit IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_PERSONA(p_idpersona IN INTEGER);

    -- CRUD SUCURSAL
    PROCEDURE SP_INSERTAR_SUCURSAL(p_iddireccion IN INTEGER, p_idestado IN INTEGER, p_nombresucursal IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_SUCURSAL(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_SUCURSAL(p_idsucursal IN INTEGER, p_iddireccion IN INTEGER, p_idestado IN INTEGER, p_nombresucursal IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_SUCURSAL(p_idsucursal IN INTEGER);

    -- CRUD TELEFONO
    PROCEDURE SP_INSERTAR_TELEFONO(p_idtipotelefono IN INTEGER, p_idpersona IN INTEGER, p_telefono IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TELEFONO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TELEFONO(p_idtelefono IN INTEGER, p_idtipotelefono IN INTEGER, p_idpersona IN INTEGER, p_telefono IN INTEGER, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TELEFONO(p_idtelefono IN INTEGER);

    -- CRUD TIPODOCIDENTIFICACION
    PROCEDURE SP_INSERTAR_TIPODOCIDENTIFICACION(p_tipodocumento IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TIPODOCIDENTIFICACION(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TIPODOCIDENTIFICACION(p_idtipodoc IN INTEGER, p_tipodocumento IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TIPODOCIDENTIFICACION(p_idtipodoc IN INTEGER);

    -- CRUD TIPOTELEFONO
    PROCEDURE SP_INSERTAR_TIPOTELEFONO(p_tipotelefono IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_LEER_TIPOTELEFONO(p_cursor OUT SYS_REFCURSOR);
    PROCEDURE SP_ACTUALIZAR_TIPOTELEFONO(p_idtipotelefono IN INTEGER, p_tipotelefono IN VARCHAR2, p_usuario IN VARCHAR2);
    PROCEDURE SP_ELIMINAR_TIPOTELEFONO(p_idtipotelefono IN INTEGER);

END PKG_GENERAL;
/

-- ====================================================
-- BODY: PKG_SEGURIDAD
-- ====================================================
CREATE OR REPLACE PACKAGE BODY PKG_SEGURIDAD AS
    PROCEDURE SP_INSERTAR_MENU(p_nombremenu IN VARCHAR2, p_url IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO MENU (IDMENU, NOMBREMENU, URL, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_MENU.NEXTVAL, p_nombremenu, p_url, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_MENU(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM MENU;
    END;
    PROCEDURE SP_ACTUALIZAR_MENU(p_idmenu IN INTEGER, p_nombremenu IN VARCHAR2, p_url IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE MENU SET
            NOMBREMENU = p_nombremenu,
            URL = p_url,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDMENU = p_idmenu;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_MENU(p_idmenu IN INTEGER) IS
    BEGIN
        DELETE FROM MENU WHERE IDMENU = p_idmenu;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_ROL(p_nombrerol IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO ROL (IDROL, NOMBREROL, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_ROL.NEXTVAL, p_nombrerol, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_ROL(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM ROL;
    END;
    PROCEDURE SP_ACTUALIZAR_ROL(p_idrol IN INTEGER, p_nombrerol IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE ROL SET
            NOMBREROL = p_nombrerol,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDROL = p_idrol;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_ROL(p_idrol IN INTEGER) IS
    BEGIN
        DELETE FROM ROL WHERE IDROL = p_idrol;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_ROLMENU(p_idmenu IN INTEGER, p_idrol IN INTEGER, p_permisolectura IN SMALLINT, p_permisoescritura IN SMALLINT, p_permisoedicion IN SMALLINT, p_permisoborrar IN SMALLINT, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO ROLMENU (IDROLMENU, IDMENU, IDROL, PERMISOLECTURA, PERMISOESCRITURA, PERMISOEDICION, PERMISOBORRAR, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_ROLMENU.NEXTVAL, p_idmenu, p_idrol, p_permisolectura, p_permisoescritura, p_permisoedicion, p_permisoborrar, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_ROLMENU(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM ROLMENU;
    END;
    PROCEDURE SP_ACTUALIZAR_ROLMENU(p_idrolmenu IN INTEGER, p_idmenu IN INTEGER, p_idrol IN INTEGER, p_permisolectura IN SMALLINT, p_permisoescritura IN SMALLINT, p_permisoedicion IN SMALLINT, p_permisoborrar IN SMALLINT, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE ROLMENU SET
            IDMENU = p_idmenu,
            IDROL = p_idrol,
            PERMISOLECTURA = p_permisolectura,
            PERMISOESCRITURA = p_permisoescritura,
            PERMISOEDICION = p_permisoedicion,
            PERMISOBORRAR = p_permisoborrar,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDROLMENU = p_idrolmenu;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_ROLMENU(p_idrolmenu IN INTEGER) IS
    BEGIN
        DELETE FROM ROLMENU WHERE IDROLMENU = p_idrolmenu;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_USUARIO(p_idempleado IN INTEGER, p_idrol IN INTEGER, p_usuario_login IN VARCHAR2, p_password IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO USUARIO (IDUSUARIO, IDEMPLEADO, IDROL, USUARIO, PASSWORD, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_USUARIO.NEXTVAL, p_idempleado, p_idrol, p_usuario_login, p_password, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_USUARIO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM USUARIO;
    END;
    PROCEDURE SP_ACTUALIZAR_USUARIO(p_idusuario IN INTEGER, p_idempleado IN INTEGER, p_idrol IN INTEGER, p_usuario_login IN VARCHAR2, p_password IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE USUARIO SET
            IDEMPLEADO = p_idempleado,
            IDROL = p_idrol,
            USUARIO = p_usuario_login,
            PASSWORD = p_password,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDUSUARIO = p_idusuario;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_USUARIO(p_idusuario IN INTEGER) IS
    BEGIN
        DELETE FROM USUARIO WHERE IDUSUARIO = p_idusuario;
        COMMIT;
    END;

END PKG_SEGURIDAD;
/

-- ====================================================
-- BODY: PKG_RRHH
-- ====================================================
CREATE OR REPLACE PACKAGE BODY PKG_RRHH AS
    PROCEDURE SP_INSERTAR_ASIGANCIONTURNO(p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idturno IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO ASIGANCIONTURNO (IDASIGNACION, IDEMPLEADO, IDSUCURSAL, IDTURNO, FECHA, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_ASIGANCIONTURNO.NEXTVAL, p_idempleado, p_idsucursal, p_idturno, p_fecha, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_ASIGANCIONTURNO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM ASIGANCIONTURNO;
    END;
    PROCEDURE SP_ACTUALIZAR_ASIGANCIONTURNO(p_idasignacion IN INTEGER, p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idturno IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE ASIGANCIONTURNO SET
            IDEMPLEADO = p_idempleado,
            IDSUCURSAL = p_idsucursal,
            IDTURNO = p_idturno,
            FECHA = p_fecha,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDASIGNACION = p_idasignacion;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_ASIGANCIONTURNO(p_idasignacion IN INTEGER) IS
    BEGIN
        DELETE FROM ASIGANCIONTURNO WHERE IDASIGNACION = p_idasignacion;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_DEPARTAMENTOLABORAL(p_departamento IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DEPARTAMENTOLABORAL (IDDEPARTAMENTO, DEPARTAMENTO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DEPARTAMENTOLABORAL.NEXTVAL, p_departamento, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DEPARTAMENTOLABORAL(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DEPARTAMENTOLABORAL;
    END;
    PROCEDURE SP_ACTUALIZAR_DEPARTAMENTOLABORAL(p_iddepartamento IN INTEGER, p_departamento IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DEPARTAMENTOLABORAL SET
            DEPARTAMENTO = p_departamento,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDEPARTAMENTO = p_iddepartamento;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DEPARTAMENTOLABORAL(p_iddepartamento IN INTEGER) IS
    BEGIN
        DELETE FROM DEPARTAMENTOLABORAL WHERE IDDEPARTAMENTO = p_iddepartamento;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_EMPLEADO(p_idpersona IN INTEGER, p_idpuesto IN INTEGER, p_idestado IN INTEGER, p_fechainicio IN DATE, p_fechafin IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO EMPLEADO (IDEMPLEADO, IDPERSONA, IDPUESTO, IDESTADO, FECHAINICIO, FECHAFIN, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_EMPLEADO.NEXTVAL, p_idpersona, p_idpuesto, p_idestado, p_fechainicio, p_fechafin, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_EMPLEADO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM EMPLEADO;
    END;
    PROCEDURE SP_ACTUALIZAR_EMPLEADO(p_idempleado IN INTEGER, p_idpersona IN INTEGER, p_idpuesto IN INTEGER, p_idestado IN INTEGER, p_fechainicio IN DATE, p_fechafin IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE EMPLEADO SET
            IDPERSONA = p_idpersona,
            IDPUESTO = p_idpuesto,
            IDESTADO = p_idestado,
            FECHAINICIO = p_fechainicio,
            FECHAFIN = p_fechafin,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDEMPLEADO = p_idempleado;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_EMPLEADO(p_idempleado IN INTEGER) IS
    BEGIN
        DELETE FROM EMPLEADO WHERE IDEMPLEADO = p_idempleado;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_PUESTO(p_iddepartamento IN INTEGER, p_puesto IN VARCHAR2, p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO PUESTO (IDPUESTO, IDDEPARTAMENTO, PUESTO, DESCRIPCION, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_PUESTO.NEXTVAL, p_iddepartamento, p_puesto, p_descripcion, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_PUESTO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM PUESTO;
    END;
    PROCEDURE SP_ACTUALIZAR_PUESTO(p_idpuesto IN INTEGER, p_iddepartamento IN INTEGER, p_puesto IN VARCHAR2, p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE PUESTO SET
            IDDEPARTAMENTO = p_iddepartamento,
            PUESTO = p_puesto,
            DESCRIPCION = p_descripcion,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDPUESTO = p_idpuesto;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_PUESTO(p_idpuesto IN INTEGER) IS
    BEGIN
        DELETE FROM PUESTO WHERE IDPUESTO = p_idpuesto;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TURNO(p_descripcion IN VARCHAR2, p_horainicio IN DATE, p_horafin IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TURNO (IDTURNO, DESCRIPCION, HORAINICIO, HORAFIN, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TURNO.NEXTVAL, p_descripcion, p_horainicio, p_horafin, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TURNO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TURNO;
    END;
    PROCEDURE SP_ACTUALIZAR_TURNO(p_idturno IN INTEGER, p_descripcion IN VARCHAR2, p_horainicio IN DATE, p_horafin IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TURNO SET
            DESCRIPCION = p_descripcion,
            HORAINICIO = p_horainicio,
            HORAFIN = p_horafin,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTURNO = p_idturno;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TURNO(p_idturno IN INTEGER) IS
    BEGIN
        DELETE FROM TURNO WHERE IDTURNO = p_idturno;
        COMMIT;
    END;

END PKG_RRHH;
/

-- ====================================================
-- BODY: PKG_INVENTARIO
-- ====================================================
CREATE OR REPLACE PACKAGE BODY PKG_INVENTARIO AS
    PROCEDURE SP_INSERTAR_COMPRAPROVEEDOR(p_idproveedor IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_total IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO COMPRAPROVEEDOR (IDCOMPRA, IDPROVEEDOR, IDSUCURSAL, FECHA, TOTAL, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_COMPRAPROVEEDOR.NEXTVAL, p_idproveedor, p_idsucursal, p_fecha, p_total, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_COMPRAPROVEEDOR(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM COMPRAPROVEEDOR;
    END;
    PROCEDURE SP_ACTUALIZAR_COMPRAPROVEEDOR(p_idcompra IN INTEGER, p_idproveedor IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_total IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE COMPRAPROVEEDOR SET
            IDPROVEEDOR = p_idproveedor,
            IDSUCURSAL = p_idsucursal,
            FECHA = p_fecha,
            TOTAL = p_total,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDCOMPRA = p_idcompra;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_COMPRAPROVEEDOR(p_idcompra IN INTEGER) IS
    BEGIN
        DELETE FROM COMPRAPROVEEDOR WHERE IDCOMPRA = p_idcompra;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_DETALLECOMPRA(p_idcompra IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_preciounitario IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DETALLECOMPRA (IDDETALLECOMPRA, IDCOMPRA, IDREPUESTO, CANTIDAD, PRECIOUNITARIO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DETALLECOMPRA.NEXTVAL, p_idcompra, p_idrepuesto, p_cantidad, p_preciounitario, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DETALLECOMPRA(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DETALLECOMPRA;
    END;
    PROCEDURE SP_ACTUALIZAR_DETALLECOMPRA(p_iddetallecompra IN INTEGER, p_idcompra IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_preciounitario IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DETALLECOMPRA SET
            IDCOMPRA = p_idcompra,
            IDREPUESTO = p_idrepuesto,
            CANTIDAD = p_cantidad,
            PRECIOUNITARIO = p_preciounitario,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDETALLECOMPRA = p_iddetallecompra;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DETALLECOMPRA(p_iddetallecompra IN INTEGER) IS
    BEGIN
        DELETE FROM DETALLECOMPRA WHERE IDDETALLECOMPRA = p_iddetallecompra;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_MARCA(p_marca IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO MARCA (IDMARCA, MARCA, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_MARCA.NEXTVAL, p_marca, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_MARCA(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM MARCA;
    END;
    PROCEDURE SP_ACTUALIZAR_MARCA(p_idmarca IN INTEGER, p_marca IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE MARCA SET
            MARCA = p_marca,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDMARCA = p_idmarca;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_MARCA(p_idmarca IN INTEGER) IS
    BEGIN
        DELETE FROM MARCA WHERE IDMARCA = p_idmarca;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_MODELO(p_idmarca IN INTEGER, p_modelo IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO MODELO (IDMODELO, IDMARCA, MODELO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_MODELO.NEXTVAL, p_idmarca, p_modelo, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_MODELO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM MODELO;
    END;
    PROCEDURE SP_ACTUALIZAR_MODELO(p_idmodelo IN INTEGER, p_idmarca IN INTEGER, p_modelo IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE MODELO SET
            IDMARCA = p_idmarca,
            MODELO = p_modelo,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDMODELO = p_idmodelo;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_MODELO(p_idmodelo IN INTEGER) IS
    BEGIN
        DELETE FROM MODELO WHERE IDMODELO = p_idmodelo;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_PROVEEDOR(p_iddireccion IN INTEGER, p_nombreproveedor IN VARCHAR2, p_contacto IN INTEGER, p_nit IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO PROVEEDOR (IDPROVEEDOR, IDDIRECCION, NOMBREPROVEEDOR, CONTACTO, NIT, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_PROVEEDOR.NEXTVAL, p_iddireccion, p_nombreproveedor, p_contacto, p_nit, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_PROVEEDOR(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM PROVEEDOR;
    END;
    PROCEDURE SP_ACTUALIZAR_PROVEEDOR(p_idproveedor IN INTEGER, p_iddireccion IN INTEGER, p_nombreproveedor IN VARCHAR2, p_contacto IN INTEGER, p_nit IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE PROVEEDOR SET
            IDDIRECCION = p_iddireccion,
            NOMBREPROVEEDOR = p_nombreproveedor,
            CONTACTO = p_contacto,
            NIT = p_nit,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDPROVEEDOR = p_idproveedor;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_PROVEEDOR(p_idproveedor IN INTEGER) IS
    BEGIN
        DELETE FROM PROVEEDOR WHERE IDPROVEEDOR = p_idproveedor;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_REPUESTOSUMINISTRO(p_idsucursal IN INTEGER, p_descripcion IN VARCHAR2, p_costocompra IN NUMBER, p_precioventa IN NUMBER, p_stockactual IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO REPUESTOSUMINISTRO (IDREPUESTO, IDSUCURSAL, DESCRIPCION, COSTOCOMPRA, PRECIOVENTA, STOCKACTUAL, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_REPUESTOSUMINISTRO.NEXTVAL, p_idsucursal, p_descripcion, p_costocompra, p_precioventa, p_stockactual, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_REPUESTOSUMINISTRO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM REPUESTOSUMINISTRO;
    END;
    PROCEDURE SP_ACTUALIZAR_REPUESTOSUMINISTRO(p_idrepuesto IN INTEGER, p_idsucursal IN INTEGER, p_descripcion IN VARCHAR2, p_costocompra IN NUMBER, p_precioventa IN NUMBER, p_stockactual IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE REPUESTOSUMINISTRO SET
            IDSUCURSAL = p_idsucursal,
            DESCRIPCION = p_descripcion,
            COSTOCOMPRA = p_costocompra,
            PRECIOVENTA = p_precioventa,
            STOCKACTUAL = p_stockactual,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDREPUESTO = p_idrepuesto;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_REPUESTOSUMINISTRO(p_idrepuesto IN INTEGER) IS
    BEGIN
        DELETE FROM REPUESTOSUMINISTRO WHERE IDREPUESTO = p_idrepuesto;
        COMMIT;
    END;

END PKG_INVENTARIO;
/

-- ====================================================
-- BODY: PKG_TALLER
-- ====================================================
CREATE OR REPLACE PACKAGE BODY PKG_TALLER AS
    PROCEDURE SP_INSERTAR_DETALLEREPARACION(p_idtiporeparacion IN INTEGER, p_idempleado IN INTEGER, p_idtiempoestimado IN INTEGER, p_idestado IN INTEGER, p_idorden IN INTEGER, p_observaciones IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DETALLEREPARACION (IDDETALLEREPARACION, IDTIPOREPARACION, IDEMPLEADO, IDTIEMPOESTIMADO, IDESTADO, IDORDEN, OBSERVACIONES, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DETALLEREPARACION.NEXTVAL, p_idtiporeparacion, p_idempleado, p_idtiempoestimado, p_idestado, p_idorden, p_observaciones, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DETALLEREPARACION(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DETALLEREPARACION;
    END;
    PROCEDURE SP_ACTUALIZAR_DETALLEREPARACION(p_iddetallereparacion IN INTEGER, p_idtiporeparacion IN INTEGER, p_idempleado IN INTEGER, p_idtiempoestimado IN INTEGER, p_idestado IN INTEGER, p_idorden IN INTEGER, p_observaciones IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DETALLEREPARACION SET
            IDTIPOREPARACION = p_idtiporeparacion,
            IDEMPLEADO = p_idempleado,
            IDTIEMPOESTIMADO = p_idtiempoestimado,
            IDESTADO = p_idestado,
            IDORDEN = p_idorden,
            OBSERVACIONES = p_observaciones,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDETALLEREPARACION = p_iddetallereparacion;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DETALLEREPARACION(p_iddetallereparacion IN INTEGER) IS
    BEGIN
        DELETE FROM DETALLEREPARACION WHERE IDDETALLEREPARACION = p_iddetallereparacion;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_DISPOSITIVO(p_idtipodispositivo IN INTEGER, p_idcliente IN INTEGER, p_idmodelo IN INTEGER, p_idestado IN INTEGER, p_noserie IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DISPOSITIVO (IDDISPOSITIVO, IDTIPODISPOSITIVO, IDCLIENTE, IDMODELO, IDESTADO, NOSERIE, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DISPOSITIVO.NEXTVAL, p_idtipodispositivo, p_idcliente, p_idmodelo, p_idestado, p_noserie, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DISPOSITIVO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DISPOSITIVO;
    END;
    PROCEDURE SP_ACTUALIZAR_DISPOSITIVO(p_iddispositivo IN INTEGER, p_idtipodispositivo IN INTEGER, p_idcliente IN INTEGER, p_idmodelo IN INTEGER, p_idestado IN INTEGER, p_noserie IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DISPOSITIVO SET
            IDTIPODISPOSITIVO = p_idtipodispositivo,
            IDCLIENTE = p_idcliente,
            IDMODELO = p_idmodelo,
            IDESTADO = p_idestado,
            NOSERIE = p_noserie,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDISPOSITIVO = p_iddispositivo;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DISPOSITIVO(p_iddispositivo IN INTEGER) IS
    BEGIN
        DELETE FROM DISPOSITIVO WHERE IDDISPOSITIVO = p_iddispositivo;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_GARANTIA(p_iddetallereparacion IN INTEGER, p_mesescobertura IN INTEGER, p_fechavencimiento IN DATE, p_terminos IN CHAR, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO GARANTIA (IDGARANTIA, IDDETALLEREPARACION, MESESCOBERTURA, FECHAVENCIMIENTO, TERMINOS, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_GARANTIA.NEXTVAL, p_iddetallereparacion, p_mesescobertura, p_fechavencimiento, p_terminos, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_GARANTIA(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM GARANTIA;
    END;
    PROCEDURE SP_ACTUALIZAR_GARANTIA(p_idgarantia IN INTEGER, p_iddetallereparacion IN INTEGER, p_mesescobertura IN INTEGER, p_fechavencimiento IN DATE, p_terminos IN CHAR, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE GARANTIA SET
            IDDETALLEREPARACION = p_iddetallereparacion,
            MESESCOBERTURA = p_mesescobertura,
            FECHAVENCIMIENTO = p_fechavencimiento,
            TERMINOS = p_terminos,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDGARANTIA = p_idgarantia;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_GARANTIA(p_idgarantia IN INTEGER) IS
    BEGIN
        DELETE FROM GARANTIA WHERE IDGARANTIA = p_idgarantia;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_ORDENSERVICIO(p_iddispositivo IN INTEGER, p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idestado IN INTEGER, p_idtiempoestimado IN INTEGER, p_fecharecepcion IN DATE, p_diagnostico IN VARCHAR2, p_aceptareparacion IN SMALLINT, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO ORDENSERVICIO (IDORDEN, IDDISPOSITIVO, IDEMPLEADO, IDSUCURSAL, IDESTADO, IDTIEMPOESTIMADO, FECHARECEPCION, DIAGNOSTICO, ACEPTAREPARACION, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_ORDENSERVICIO.NEXTVAL, p_iddispositivo, p_idempleado, p_idsucursal, p_idestado, p_idtiempoestimado, p_fecharecepcion, p_diagnostico, p_aceptareparacion, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_ORDENSERVICIO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM ORDENSERVICIO;
    END;
    PROCEDURE SP_ACTUALIZAR_ORDENSERVICIO(p_idorden IN INTEGER, p_iddispositivo IN INTEGER, p_idempleado IN INTEGER, p_idsucursal IN INTEGER, p_idestado IN INTEGER, p_idtiempoestimado IN INTEGER, p_fecharecepcion IN DATE, p_diagnostico IN VARCHAR2, p_aceptareparacion IN SMALLINT, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE ORDENSERVICIO SET
            IDDISPOSITIVO = p_iddispositivo,
            IDEMPLEADO = p_idempleado,
            IDSUCURSAL = p_idsucursal,
            IDESTADO = p_idestado,
            IDTIEMPOESTIMADO = p_idtiempoestimado,
            FECHARECEPCION = p_fecharecepcion,
            DIAGNOSTICO = p_diagnostico,
            ACEPTAREPARACION = p_aceptareparacion,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDORDEN = p_idorden;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_ORDENSERVICIO(p_idorden IN INTEGER) IS
    BEGIN
        DELETE FROM ORDENSERVICIO WHERE IDORDEN = p_idorden;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_RECLAMOGARANTIA(p_idempleado IN INTEGER, p_idgarantia IN INTEGER, p_fechareclamo IN DATE, p_descripcionfalla IN VARCHAR2, p_resolucion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO RECLAMOGARANTIA (IDRECLAMO, IDEMPLEADO, IDGARANTIA, FECHARECLAMO, DESCRIPCIONFALLA, RESOLUCION, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_RECLAMOGARANTIA.NEXTVAL, p_idempleado, p_idgarantia, p_fechareclamo, p_descripcionfalla, p_resolucion, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_RECLAMOGARANTIA(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM RECLAMOGARANTIA;
    END;
    PROCEDURE SP_ACTUALIZAR_RECLAMOGARANTIA(p_idreclamo IN INTEGER, p_idempleado IN INTEGER, p_idgarantia IN INTEGER, p_fechareclamo IN DATE, p_descripcionfalla IN VARCHAR2, p_resolucion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE RECLAMOGARANTIA SET
            IDEMPLEADO = p_idempleado,
            IDGARANTIA = p_idgarantia,
            FECHARECLAMO = p_fechareclamo,
            DESCRIPCIONFALLA = p_descripcionfalla,
            RESOLUCION = p_resolucion,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDRECLAMO = p_idreclamo;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_RECLAMOGARANTIA(p_idreclamo IN INTEGER) IS
    BEGIN
        DELETE FROM RECLAMOGARANTIA WHERE IDRECLAMO = p_idreclamo;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TIEMPOESTIMADO(p_idtipotiempo IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TIEMPOESTIMADO (IDTIEMPOESTIMADO, IDTIPOTIEMPO, CANTIDAD, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TIEMPOESTIMADO.NEXTVAL, p_idtipotiempo, p_cantidad, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TIEMPOESTIMADO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TIEMPOESTIMADO;
    END;
    PROCEDURE SP_ACTUALIZAR_TIEMPOESTIMADO(p_idtiempoestimado IN INTEGER, p_idtipotiempo IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TIEMPOESTIMADO SET
            IDTIPOTIEMPO = p_idtipotiempo,
            CANTIDAD = p_cantidad,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTIEMPOESTIMADO = p_idtiempoestimado;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TIEMPOESTIMADO(p_idtiempoestimado IN INTEGER) IS
    BEGIN
        DELETE FROM TIEMPOESTIMADO WHERE IDTIEMPOESTIMADO = p_idtiempoestimado;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TIPODISPOSITIVO(p_categoria IN VARCHAR2, p_costorevision IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TIPODISPOSITIVO (IDTIPODISPOSITIVO, CATEGORIA, COSTOREVISION, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TIPODISPOSITIVO.NEXTVAL, p_categoria, p_costorevision, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TIPODISPOSITIVO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TIPODISPOSITIVO;
    END;
    PROCEDURE SP_ACTUALIZAR_TIPODISPOSITIVO(p_idtipodispositivo IN INTEGER, p_categoria IN VARCHAR2, p_costorevision IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TIPODISPOSITIVO SET
            CATEGORIA = p_categoria,
            COSTOREVISION = p_costorevision,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTIPODISPOSITIVO = p_idtipodispositivo;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TIPODISPOSITIVO(p_idtipodispositivo IN INTEGER) IS
    BEGIN
        DELETE FROM TIPODISPOSITIVO WHERE IDTIPODISPOSITIVO = p_idtipodispositivo;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TIPOREPARACION(p_descripcion IN VARCHAR2, p_costobase IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TIPOREPARACION (IDTIPOREPARACION, DESCRIPCION, COSTOBASE, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TIPOREPARACION.NEXTVAL, p_descripcion, p_costobase, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TIPOREPARACION(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TIPOREPARACION;
    END;
    PROCEDURE SP_ACTUALIZAR_TIPOREPARACION(p_idtiporeparacion IN INTEGER, p_descripcion IN VARCHAR2, p_costobase IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TIPOREPARACION SET
            DESCRIPCION = p_descripcion,
            COSTOBASE = p_costobase,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTIPOREPARACION = p_idtiporeparacion;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TIPOREPARACION(p_idtiporeparacion IN INTEGER) IS
    BEGIN
        DELETE FROM TIPOREPARACION WHERE IDTIPOREPARACION = p_idtiporeparacion;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TIPOTIEMPO(p_tipotiempo IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TIPOTIEMPO (IDTIPOTIEMPO, TIPOTIEMPO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TIPOTIEMPO.NEXTVAL, p_tipotiempo, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TIPOTIEMPO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TIPOTIEMPO;
    END;
    PROCEDURE SP_ACTUALIZAR_TIPOTIEMPO(p_idtipotiempo IN INTEGER, p_tipotiempo IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TIPOTIEMPO SET
            TIPOTIEMPO = p_tipotiempo,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTIPOTIEMPO = p_idtipotiempo;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TIPOTIEMPO(p_idtipotiempo IN INTEGER) IS
    BEGIN
        DELETE FROM TIPOTIEMPO WHERE IDTIPOTIEMPO = p_idtipotiempo;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_USOREPUESTO(p_iddetallereparacion IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO USOREPUESTO (IDUSO, IDDETALLEREPARACION, IDREPUESTO, CANTIDAD, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_USOREPUESTO.NEXTVAL, p_iddetallereparacion, p_idrepuesto, p_cantidad, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_USOREPUESTO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM USOREPUESTO;
    END;
    PROCEDURE SP_ACTUALIZAR_USOREPUESTO(p_iduso IN INTEGER, p_iddetallereparacion IN INTEGER, p_idrepuesto IN INTEGER, p_cantidad IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE USOREPUESTO SET
            IDDETALLEREPARACION = p_iddetallereparacion,
            IDREPUESTO = p_idrepuesto,
            CANTIDAD = p_cantidad,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDUSO = p_iduso;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_USOREPUESTO(p_iduso IN INTEGER) IS
    BEGIN
        DELETE FROM USOREPUESTO WHERE IDUSO = p_iduso;
        COMMIT;
    END;

END PKG_TALLER;
/

-- ====================================================
-- BODY: PKG_VENTAS
-- ====================================================
CREATE OR REPLACE PACKAGE BODY PKG_VENTAS AS
    PROCEDURE SP_INSERTAR_DETALLEFACTURA(p_idfactura IN INTEGER, p_descripcion IN VARCHAR2, p_subtotal IN NUMBER, p_impuestos IN NUMBER, p_total IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DETALLEFACTURA (IDDETALLEFACT, IDFACTURA, DESCRIPCION, SUBTOTAL, IMPUESTOS, TOTAL, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DETALLEFACTURA.NEXTVAL, p_idfactura, p_descripcion, p_subtotal, p_impuestos, p_total, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DETALLEFACTURA(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DETALLEFACTURA;
    END;
    PROCEDURE SP_ACTUALIZAR_DETALLEFACTURA(p_iddetallefact IN INTEGER, p_idfactura IN INTEGER, p_descripcion IN VARCHAR2, p_subtotal IN NUMBER, p_impuestos IN NUMBER, p_total IN NUMBER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DETALLEFACTURA SET
            IDFACTURA = p_idfactura,
            DESCRIPCION = p_descripcion,
            SUBTOTAL = p_subtotal,
            IMPUESTOS = p_impuestos,
            TOTAL = p_total,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDETALLEFACT = p_iddetallefact;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DETALLEFACTURA(p_iddetallefact IN INTEGER) IS
    BEGIN
        DELETE FROM DETALLEFACTURA WHERE IDDETALLEFACT = p_iddetallefact;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_DETALLEPAGO(p_idpago IN INTEGER, p_idmetodo IN INTEGER, p_detallepago IN VARCHAR2, p_montopagado IN NUMBER) IS
    BEGIN
        INSERT INTO DETALLEPAGO (IDDETALLEPAGO, IDPAGO, IDMETODO, DETALLEPAGO, MONTOPAGADO)
        VALUES (SEQ_DETALLEPAGO.NEXTVAL, p_idpago, p_idmetodo, p_detallepago, p_montopagado);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DETALLEPAGO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DETALLEPAGO;
    END;
    PROCEDURE SP_ACTUALIZAR_DETALLEPAGO(p_iddetallepago IN INTEGER, p_idpago IN INTEGER, p_idmetodo IN INTEGER, p_detallepago IN VARCHAR2, p_montopagado IN NUMBER) IS
    BEGIN
        UPDATE DETALLEPAGO SET
            IDPAGO = p_idpago,
            IDMETODO = p_idmetodo,
            DETALLEPAGO = p_detallepago,
            MONTOPAGADO = p_montopagado
        WHERE IDDETALLEPAGO = p_iddetallepago;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DETALLEPAGO(p_iddetallepago IN INTEGER) IS
    BEGIN
        DELETE FROM DETALLEPAGO WHERE IDDETALLEPAGO = p_iddetallepago;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_FACTURACLIENTE(p_idorden IN INTEGER, p_idestado IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO FACTURACLIENTE (IDFACTURA, IDORDEN, IDESTADO, FECHA, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_FACTURACLIENTE.NEXTVAL, p_idorden, p_idestado, p_fecha, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_FACTURACLIENTE(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM FACTURACLIENTE;
    END;
    PROCEDURE SP_ACTUALIZAR_FACTURACLIENTE(p_idfactura IN INTEGER, p_idorden IN INTEGER, p_idestado IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE FACTURACLIENTE SET
            IDORDEN = p_idorden,
            IDESTADO = p_idestado,
            FECHA = p_fecha,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDFACTURA = p_idfactura;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_FACTURACLIENTE(p_idfactura IN INTEGER) IS
    BEGIN
        DELETE FROM FACTURACLIENTE WHERE IDFACTURA = p_idfactura;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_METODOPAGO(p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO METODOPAGO (IDMETODO, DESCRIPCION, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_METODOPAGO.NEXTVAL, p_descripcion, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_METODOPAGO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM METODOPAGO;
    END;
    PROCEDURE SP_ACTUALIZAR_METODOPAGO(p_idmetodo IN INTEGER, p_descripcion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE METODOPAGO SET
            DESCRIPCION = p_descripcion,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDMETODO = p_idmetodo;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_METODOPAGO(p_idmetodo IN INTEGER) IS
    BEGIN
        DELETE FROM METODOPAGO WHERE IDMETODO = p_idmetodo;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_PAGO(p_idfactura IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO PAGO (IDPAGO, IDFACTURA, IDSUCURSAL, FECHA, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_PAGO.NEXTVAL, p_idfactura, p_idsucursal, p_fecha, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_PAGO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM PAGO;
    END;
    PROCEDURE SP_ACTUALIZAR_PAGO(p_idpago IN INTEGER, p_idfactura IN INTEGER, p_idsucursal IN INTEGER, p_fecha IN DATE, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE PAGO SET
            IDFACTURA = p_idfactura,
            IDSUCURSAL = p_idsucursal,
            FECHA = p_fecha,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDPAGO = p_idpago;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_PAGO(p_idpago IN INTEGER) IS
    BEGIN
        DELETE FROM PAGO WHERE IDPAGO = p_idpago;
        COMMIT;
    END;

END PKG_VENTAS;
/

-- ====================================================
-- BODY: PKG_GENERAL
-- ====================================================
CREATE OR REPLACE PACKAGE BODY PKG_GENERAL AS
    PROCEDURE SP_INSERTAR_CLIENTE(p_idpersona IN INTEGER, p_idestado IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO CLIENTE (IDCLIENTE, IDPERSONA, IDESTADO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_CLIENTE.NEXTVAL, p_idpersona, p_idestado, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_CLIENTE(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM CLIENTE;
    END;
    PROCEDURE SP_ACTUALIZAR_CLIENTE(p_idcliente IN INTEGER, p_idpersona IN INTEGER, p_idestado IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE CLIENTE SET
            IDPERSONA = p_idpersona,
            IDESTADO = p_idestado,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDCLIENTE = p_idcliente;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_CLIENTE(p_idcliente IN INTEGER) IS
    BEGIN
        DELETE FROM CLIENTE WHERE IDCLIENTE = p_idcliente;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_DEPARTAMENTO(p_nombredepartamento IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DEPARTAMENTO (IDDEPARTAMENTO, NOMBREDEPARTAMENTO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DEPARTAMENTO.NEXTVAL, p_nombredepartamento, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DEPARTAMENTO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DEPARTAMENTO;
    END;
    PROCEDURE SP_ACTUALIZAR_DEPARTAMENTO(p_iddepartamento IN INTEGER, p_nombredepartamento IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DEPARTAMENTO SET
            NOMBREDEPARTAMENTO = p_nombredepartamento,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDEPARTAMENTO = p_iddepartamento;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DEPARTAMENTO(p_iddepartamento IN INTEGER) IS
    BEGIN
        DELETE FROM DEPARTAMENTO WHERE IDDEPARTAMENTO = p_iddepartamento;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_DIRECCION(p_idmunicipio IN INTEGER, p_direccion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO DIRECCION (IDDIRECCION, IDMUNICIPIO, DIRECCION, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_DIRECCION.NEXTVAL, p_idmunicipio, p_direccion, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_DIRECCION(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM DIRECCION;
    END;
    PROCEDURE SP_ACTUALIZAR_DIRECCION(p_iddireccion IN INTEGER, p_idmunicipio IN INTEGER, p_direccion IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE DIRECCION SET
            IDMUNICIPIO = p_idmunicipio,
            DIRECCION = p_direccion,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDDIRECCION = p_iddireccion;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_DIRECCION(p_iddireccion IN INTEGER) IS
    BEGIN
        DELETE FROM DIRECCION WHERE IDDIRECCION = p_iddireccion;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_ESTADO(p_estado IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO ESTADO (IDESTADO, ESTADO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_ESTADO.NEXTVAL, p_estado, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_ESTADO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM ESTADO;
    END;
    PROCEDURE SP_ACTUALIZAR_ESTADO(p_idestado IN INTEGER, p_estado IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE ESTADO SET
            ESTADO = p_estado,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDESTADO = p_idestado;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_ESTADO(p_idestado IN INTEGER) IS
    BEGIN
        DELETE FROM ESTADO WHERE IDESTADO = p_idestado;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_MUNICIPIO(p_iddepartamento IN INTEGER, p_nombremunicipio IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO MUNICIPIO (IDMUNICIPIO, IDDEPARTAMENTO, NOMBREMUNICIPIO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_MUNICIPIO.NEXTVAL, p_iddepartamento, p_nombremunicipio, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_MUNICIPIO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM MUNICIPIO;
    END;
    PROCEDURE SP_ACTUALIZAR_MUNICIPIO(p_idmunicipio IN INTEGER, p_iddepartamento IN INTEGER, p_nombremunicipio IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE MUNICIPIO SET
            IDDEPARTAMENTO = p_iddepartamento,
            NOMBREMUNICIPIO = p_nombremunicipio,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDMUNICIPIO = p_idmunicipio;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_MUNICIPIO(p_idmunicipio IN INTEGER) IS
    BEGIN
        DELETE FROM MUNICIPIO WHERE IDMUNICIPIO = p_idmunicipio;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_PERSONA(p_iddireccion IN INTEGER, p_idtipodoc IN INTEGER, p_nombre1 IN VARCHAR2, p_nombre2 IN VARCHAR2, p_apellido1 IN VARCHAR2, p_apellido2 IN VARCHAR2, p_fechanacimiento IN DATE, p_noidentificacion IN VARCHAR2, p_nit IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO PERSONA (IDPERSONA, IDDIRECCION, IDTIPODOC, NOMBRE1, NOMBRE2, APELLIDO1, APELLIDO2, FECHANACIMIENTO, NOIDENTIFICACION, NIT, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_PERSONA.NEXTVAL, p_iddireccion, p_idtipodoc, p_nombre1, p_nombre2, p_apellido1, p_apellido2, p_fechanacimiento, p_noidentificacion, p_nit, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_PERSONA(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM PERSONA;
    END;
    PROCEDURE SP_ACTUALIZAR_PERSONA(p_idpersona IN INTEGER, p_iddireccion IN INTEGER, p_idtipodoc IN INTEGER, p_nombre1 IN VARCHAR2, p_nombre2 IN VARCHAR2, p_apellido1 IN VARCHAR2, p_apellido2 IN VARCHAR2, p_fechanacimiento IN DATE, p_noidentificacion IN VARCHAR2, p_nit IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE PERSONA SET
            IDDIRECCION = p_iddireccion,
            IDTIPODOC = p_idtipodoc,
            NOMBRE1 = p_nombre1,
            NOMBRE2 = p_nombre2,
            APELLIDO1 = p_apellido1,
            APELLIDO2 = p_apellido2,
            FECHANACIMIENTO = p_fechanacimiento,
            NOIDENTIFICACION = p_noidentificacion,
            NIT = p_nit,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDPERSONA = p_idpersona;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_PERSONA(p_idpersona IN INTEGER) IS
    BEGIN
        DELETE FROM PERSONA WHERE IDPERSONA = p_idpersona;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_SUCURSAL(p_iddireccion IN INTEGER, p_idestado IN INTEGER, p_nombresucursal IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO SUCURSAL (IDSUCURSAL, IDDIRECCION, IDESTADO, NOMBRESUCURSAL, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_SUCURSAL.NEXTVAL, p_iddireccion, p_idestado, p_nombresucursal, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_SUCURSAL(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM SUCURSAL;
    END;
    PROCEDURE SP_ACTUALIZAR_SUCURSAL(p_idsucursal IN INTEGER, p_iddireccion IN INTEGER, p_idestado IN INTEGER, p_nombresucursal IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE SUCURSAL SET
            IDDIRECCION = p_iddireccion,
            IDESTADO = p_idestado,
            NOMBRESUCURSAL = p_nombresucursal,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDSUCURSAL = p_idsucursal;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_SUCURSAL(p_idsucursal IN INTEGER) IS
    BEGIN
        DELETE FROM SUCURSAL WHERE IDSUCURSAL = p_idsucursal;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TELEFONO(p_idtipotelefono IN INTEGER, p_idpersona IN INTEGER, p_telefono IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TELEFONO (IDTELEFONO, IDTIPOTELEFONO, IDPERSONA, TELEFONO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TELEFONO.NEXTVAL, p_idtipotelefono, p_idpersona, p_telefono, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TELEFONO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TELEFONO;
    END;
    PROCEDURE SP_ACTUALIZAR_TELEFONO(p_idtelefono IN INTEGER, p_idtipotelefono IN INTEGER, p_idpersona IN INTEGER, p_telefono IN INTEGER, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TELEFONO SET
            IDTIPOTELEFONO = p_idtipotelefono,
            IDPERSONA = p_idpersona,
            TELEFONO = p_telefono,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTELEFONO = p_idtelefono;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TELEFONO(p_idtelefono IN INTEGER) IS
    BEGIN
        DELETE FROM TELEFONO WHERE IDTELEFONO = p_idtelefono;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TIPODOCIDENTIFICACION(p_tipodocumento IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TIPODOCIDENTIFICACION (IDTIPODOC, TIPODOCUMENTO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TIPODOCIDENTIFICACION.NEXTVAL, p_tipodocumento, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TIPODOCIDENTIFICACION(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TIPODOCIDENTIFICACION;
    END;
    PROCEDURE SP_ACTUALIZAR_TIPODOCIDENTIFICACION(p_idtipodoc IN INTEGER, p_tipodocumento IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TIPODOCIDENTIFICACION SET
            TIPODOCUMENTO = p_tipodocumento,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTIPODOC = p_idtipodoc;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TIPODOCIDENTIFICACION(p_idtipodoc IN INTEGER) IS
    BEGIN
        DELETE FROM TIPODOCIDENTIFICACION WHERE IDTIPODOC = p_idtipodoc;
        COMMIT;
    END;

    PROCEDURE SP_INSERTAR_TIPOTELEFONO(p_tipotelefono IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        INSERT INTO TIPOTELEFONO (IDTIPOTELEFONO, TIPOTELEFONO, USUARIOCREACION, FECHACREACION)
        VALUES (SEQ_TIPOTELEFONO.NEXTVAL, p_tipotelefono, p_usuario, SYSDATE);
        COMMIT;
    END;
    PROCEDURE SP_LEER_TIPOTELEFONO(p_cursor OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN p_cursor FOR SELECT * FROM TIPOTELEFONO;
    END;
    PROCEDURE SP_ACTUALIZAR_TIPOTELEFONO(p_idtipotelefono IN INTEGER, p_tipotelefono IN VARCHAR2, p_usuario IN VARCHAR2) IS
    BEGIN
        UPDATE TIPOTELEFONO SET
            TIPOTELEFONO = p_tipotelefono,
            USUATIOMOD = p_usuario,
            FECHAMOD = SYSDATE
        WHERE IDTIPOTELEFONO = p_idtipotelefono;
        COMMIT;
    END;
    PROCEDURE SP_ELIMINAR_TIPOTELEFONO(p_idtipotelefono IN INTEGER) IS
    BEGIN
        DELETE FROM TIPOTELEFONO WHERE IDTIPOTELEFONO = p_idtipotelefono;
        COMMIT;
    END;

END PKG_GENERAL;
/
