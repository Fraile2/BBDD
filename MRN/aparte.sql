SELECT distinct extension_telefonica_empleado
FROM t_empleados
ORDER BY extension_telefonica_empleado;



SELECT nombre_empleado, fecha_nacimiento_empleado, fecha_ingreso_empleado
FROM t_empleados
WHERE substring_index(nombre_empleado,", ",1) LIKE "%a%r%";


