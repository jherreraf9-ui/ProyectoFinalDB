-- ====================================================
-- TRIGGERS PARA AUDITORÍA / BITÁCORA (Puntos 7 y 8)
-- ====================================================

CREATE OR REPLACE TRIGGER TRG_AUDIT_CLIENTE
AFTER INSERT OR UPDATE OR DELETE ON CLIENTE
FOR EACH ROW
DECLARE
    v_accion VARCHAR2(250);
    v_anterior VARCHAR2(250) := NULL;
    v_nuevo VARCHAR2(250) := NULL;
    -- Nota: En un sistema real esto viene de la sesión. 
    -- Para tu prototipo académico, usaremos el ID de Usuario 1 por defecto.
    v_id_usuario INTEGER := 1; 
BEGIN
    -- 1. Determinar qué acción se está realizando y capturar los datos
    IF INSERTING THEN
        v_accion := 'INSERT';
        v_nuevo := 'IdCliente: ' || :NEW.IDCLIENTE || ' | IdPersona: ' || :NEW.IDPERSONA || ' | IdEstado: ' || :NEW.IDESTADO;
    
    ELSIF UPDATING THEN
        v_accion := 'UPDATE';
        v_anterior := 'IdEstado Anterior: ' || :OLD.IDESTADO;
        v_nuevo := 'IdEstado Nuevo: ' || :NEW.IDESTADO;
        
    ELSIF DELETING THEN
        v_accion := 'DELETE';
        v_anterior := 'IdCliente: ' || :OLD.IDCLIENTE || ' | IdPersona: ' || :OLD.IDPERSONA;
    END IF;

    -- 2. Insertar el registro automáticamente en la Bitácora
    INSERT INTO BITACORA (
        IDBITACORA, 
        IDUSUARIO, 
        FECHAHORA, 
        TABLAAFECTADA, 
        ACCION, 
        VALORANTERIOR, 
        VALORNUEVO
    ) VALUES (
        SEQ_BITACORA.NEXTVAL, 
        v_id_usuario, 
        SYSDATE, 
        'CLIENTE', 
        v_accion, 
        v_anterior, 
        v_nuevo
    );
END;
/

DECLARE
    CURSOR c_tablas IS 
        SELECT table_name 
        FROM user_tables 
        WHERE table_name NOT IN ('BITACORA'); -- Excluimos la bitácora misma
    v_sql VARCHAR2(32767);
BEGIN
    FOR t IN c_tablas LOOP
        v_sql := 'CREATE OR REPLACE TRIGGER TRG_AUDIT_' || SUBSTR(t.table_name, 1, 20) || 
                 ' AFTER INSERT OR UPDATE OR DELETE ON ' || t.table_name || 
                 ' FOR EACH ROW ' ||
                 ' DECLARE ' ||
                 '   v_accion VARCHAR2(250); ' ||
                 '   v_detalles VARCHAR2(250); ' ||
                 ' BEGIN ' ||
                 '   IF INSERTING THEN ' ||
                 '      v_accion := ''INSERT''; ' ||
                 '      v_detalles := ''Nuevo registro ingresado''; ' ||
                 '   ELSIF UPDATING THEN ' ||
                 '      v_accion := ''UPDATE''; ' ||
                 '      v_detalles := ''Registro actualizado''; ' ||
                 '   ELSIF DELETING THEN ' ||
                 '      v_accion := ''DELETE''; ' ||
                 '      v_detalles := ''Registro eliminado''; ' ||
                 '   END IF; ' ||
                 '   INSERT INTO BITACORA (IDBITACORA, IDUSUARIO, FECHAHORA, TABLAAFECTADA, ACCION, VALORANTERIOR, VALORNUEVO) ' ||
                 '   VALUES (SEQ_BITACORA.NEXTVAL, 1, SYSDATE, ''' || t.table_name || ''', v_accion, ''N/A'', v_detalles); ' ||
                 ' END;';
        
        -- Ejecuta el comando para crear el trigger
        EXECUTE IMMEDIATE v_sql;
    END LOOP;
END;
/