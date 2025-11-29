SELECT
    nombre,
    empleo,
    sueldo,
    departamento_id,
    COUNT(*) OVER (
        PARTITION BY
            departamento_id
    ) AS cantidad_empleados
FROM Empleados;