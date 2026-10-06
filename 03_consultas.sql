-- Consulta 1: Todos los clientes
SELECT * FROM clientes;

-- Consulta 2: Proyectos con su cliente
SELECT p.nombre AS proyecto, c.nombre AS cliente, p.presupuesto
FROM proyectos p
JOIN clientes c ON p.id_cliente = c.id_cliente;

-- Consulta 3: Empleados asignados a cada proyecto
SELECT pr.nombre AS proyecto, e.nombre AS empleado, a.rol
FROM asignaciones a
JOIN empleados e ON a.id_empleado = e.id_empleado
JOIN proyectos pr ON a.id_proyecto = pr.id_proyecto;

-- Consulta 4: Total gastado en materiales por proyecto
SELECT p.nombre AS proyecto, SUM(c.precio_total) AS total_gastado
FROM compras c
JOIN proyectos p ON c.id_proyecto = p.id_proyecto
GROUP BY p.nombre
ORDER BY total_gastado DESC;