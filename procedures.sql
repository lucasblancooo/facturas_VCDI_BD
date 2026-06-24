-- ==========================================
-- PROCEDURE: VerMedicamentos
-- ==========================================

DELIMITER / /

CREATE PROCEDURE VerMedicamentos()
BEGIN
    SELECT * 
    FROM medicamento;
END //

DELIMITER;

-- ==========================================
-- PROCEDURE: VerTurnosPaciente
-- ==========================================

DELIMITER / /

CREATE PROCEDURE VerTurnosPaciente(
    IN pIDPaciente INT
)
BEGIN
    SELECT *
    FROM turno
    WHERE ID_Pac = pIDPaciente;
END //

DELIMITER;

-- ==========================================
-- PROCEDURE: VerDetalleTurnos
-- ==========================================

DELIMITER / /

CREATE PROCEDURE VerDetalleTurnos()
BEGIN
    SELECT
        t.ID_Turno,
        p.Nombre AS NombrePaciente,
        p.Apellido AS ApellidoPaciente,
        m.Nombre AS NombreMedico,
        m.Apellido AS ApellidoMedico,
        t.Fecha,
        t.Horario
    FROM turno t
    INNER JOIN paciente p
        ON t.ID_Pac = p.ID_Pac
    INNER JOIN medico m
        ON t.ID_Med = m.ID_Med;
END //

DELIMITER;

-- ==========================================
-- PROCEDURE: GenerarFactura
-- ==========================================

DELIMITER / /

CREATE PROCEDURE GenerarFactura(
    IN pIDReceta INT
)
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(m.Precio_unitario)
    INTO total
    FROM contiene c
    INNER JOIN medicamento m
        ON c.ID_Medicamento = m.ID_Medicamento
    WHERE c.ID_Receta = pIDReceta;

    INSERT INTO factura (Costo_total, ID_Receta)
    VALUES (total, pIDReceta);
END //

DELIMITER;

-- ==========================================
-- EJEMPLO DE USO
-- ==========================================

CALL VerMedicamentos ();

CALL VerTurnosPaciente (1);

CALL VerDetalleTurnos ();

CALL GenerarFactura (1);

SELECT * FROM factura WHERE ID_Receta = 1;