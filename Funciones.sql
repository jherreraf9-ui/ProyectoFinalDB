CREATE OR REPLACE FUNCTION FN_CALCULAR_TOTAL_ORDEN (
    p_idorden IN INTEGER
) RETURN NUMBER IS
    v_total_mano_obra NUMBER(10,2) := 0;
    v_total_repuestos NUMBER(10,2) := 0;
BEGIN
    -- 1. Calcular suma de mano de obra (Costo base de la reparación)
    SELECT NVL(SUM(TR.COSTOBASE), 0)
    INTO v_total_mano_obra
    FROM DETALLEREPARACION DR
    JOIN TIPOREPARACION TR ON DR.IDTIPOREPARACION = TR.IDTIPOREPARACION
    WHERE DR.IDORDEN = p_idorden;

    -- 2. Calcular suma del costo de repuestos utilizados
    SELECT NVL(SUM(UR.CANTIDAD * RS.PRECIOVENTA), 0)
    INTO v_total_repuestos
    FROM DETALLEREPARACION DR
    JOIN USOREPUESTO UR ON DR.IDDETALLEREPARACION = UR.IDDETALLEREPARACION
    JOIN REPUESTOSUMINISTRO RS ON UR.IDREPUESTO = RS.IDREPUESTO
    WHERE DR.IDORDEN = p_idorden;

    -- Retornar el gran total
    RETURN v_total_mano_obra + v_total_repuestos;
END;
/

CREATE OR REPLACE FUNCTION FN_CALCULAR_EDAD (
    p_fecha_nacimiento IN DATE
) RETURN INTEGER IS
    v_edad INTEGER;
BEGIN
    IF p_fecha_nacimiento IS NULL THEN
        RETURN 0;
    END IF;
    
    -- Calcula los meses entre hoy y la fecha de nacimiento, y lo divide en 12
    v_edad := TRUNC(MONTHS_BETWEEN(SYSDATE, p_fecha_nacimiento) / 12);
    
    RETURN v_edad;
END;
/

CREATE OR REPLACE FUNCTION FN_VERIFICAR_STOCK (
    p_idrepuesto IN INTEGER,
    p_cantidad_requerida IN INTEGER
) RETURN VARCHAR2 IS
    v_stock_actual INTEGER;
BEGIN
    -- Obtenemos el stock actual del repuesto
    SELECT STOCKACTUAL 
    INTO v_stock_actual
    FROM REPUESTOSUMINISTRO
    WHERE IDREPUESTO = p_idrepuesto;

    -- Evaluamos si alcanza
    IF v_stock_actual >= p_cantidad_requerida THEN
        RETURN 'SI';
    ELSE
        RETURN 'NO';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'NO'; -- Si el repuesto no existe, obviamente no hay stock
END;
/

