-- =====================================================
-- DATOS DE EJEMPLO
-- =====================================================

-- CLIENTES
INSERT INTO clientes (nombre, telefono, email, direccion) VALUES
('Constructora Pérez S.A.', '555-1234', 'contacto@perez.com', 'Av. Reforma 123'),
('Grupo Inmobiliario López', '555-5678', 'info@lopez.com', 'Calle Juárez 456'),
('María González', '555-9012', 'maria@mail.com', 'Av. Universidad 789');

-- EMPLEADOS
INSERT INTO empleados (nombre, cargo, salario, telefono) VALUES
('Juan Martínez', 'Ingeniero Civil', 25000.00, '555-1111'),
('Pedro Ramírez', 'Maestro de Obra', 15000.00, '555-2222'),
('Ana Torres', 'Arquitecta', 22000.00, '555-3333'),
('Luis Hernández', 'Obrero', 8000.00, '555-4444'),
('Sofia Castillo', 'Administradora', 18000.00, '555-5555');

-- PROVEEDORES
INSERT INTO proveedores (nombre, telefono, email) VALUES
('Cementos del Norte', '555-6666', 'ventas@cementosnorte.com'),
('Aceros Industriales', '555-7777', 'contacto@aceros.com'),
('Materiales del Sur', '555-8888', 'pedidos@materialessur.com');

-- MATERIALES
INSERT INTO materiales (nombre, unidad_medida, precio_unitario) VALUES
('Cemento Portland', 'saco 50kg', 250.00),
('Varilla de acero 3/8', 'pieza', 120.00),
('Arena', 'm3', 350.00),
('Grava', 'm3', 400.00),
('Ladrillo rojo', 'millar', 2500.00);

-- PROYECTOS
INSERT INTO proyectos (nombre, direccion, fecha_inicio, fecha_fin, presupuesto, id_cliente) VALUES
('Torre Residencial Aurora', 'Av. Central 100', '2025-01-15', '2026-06-30', 5000000.00, 1),
('Casa Habitación González', 'Calle Robles 55', '2025-03-01', '2025-11-30', 850000.00, 3),
('Plaza Comercial Norte', 'Blvd. Norte 200', '2024-09-01', '2026-02-28', 8000000.00, 2);

-- ASIGNACIONES
INSERT INTO asignaciones (id_empleado, id_proyecto, fecha_asignacion, rol) VALUES
(1, 1, '2025-01-15', 'Director de obra'),
(2, 1, '2025-01-20', 'Maestro de obra'),
(4, 1, '2025-02-01', 'Albañil'),
(3, 2, '2025-03-01', 'Arquitecta'),
(4, 2, '2025-03-05', 'Albañil'),
(1, 3, '2024-09-01', 'Director de obra'),
(5, 3, '2024-09-01', 'Administradora');

-- COMPRAS
INSERT INTO compras (id_proyecto, id_material, id_proveedor, cantidad, fecha_compra, precio_total) VALUES
(1, 1, 1, 500, '2025-01-20', 125000.00),
(1, 2, 2, 1000, '2025-01-22', 120000.00),
(2, 1, 1, 100, '2025-03-05', 25000.00),
(2, 5, 3, 10, '2025-03-10', 25000.00),
(3, 3, 3, 200, '2024-09-10', 70000.00),
(3, 4, 3, 150, '2024-09-15', 60000.00);