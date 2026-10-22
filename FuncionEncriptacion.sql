-- ====================================================
-- FUNCIÓN PARA ENCRIPTAR CONTRASEÑAS (Punto 6)
-- ====================================================

CREATE OR REPLACE FUNCTION ENCRIPTAR_CLAVE (
    p_clave IN VARCHAR2
) RETURN VARCHAR2 IS
    v_clave_encriptada VARCHAR2(1000);
BEGIN
    -- Ejecutamos la función a través de una consulta SQL hacia DUAL
    SELECT RAWTOHEX(STANDARD_HASH(p_clave, 'SHA256'))
    INTO v_clave_encriptada
    FROM DUAL;
    
    RETURN v_clave_encriptada;
END;
/