SELECT
    nombre,
    empleo,
    sueldo,
    departamento_id,
    RANK() OVER (
        PARTITION BY
            departamento_id
        ORDER BY sueldo DESC
    ) AS rango_sueldo
FROM Empleados;