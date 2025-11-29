SELECT
    nombre,
    empleo,
    sueldo,
    departamento_id,
    sueldo - LEAD(sueldo) OVER (
        PARTITION BY
            departamento_id
        ORDER BY sueldo
    ) AS diferencia_sueldo
FROM Empleados;