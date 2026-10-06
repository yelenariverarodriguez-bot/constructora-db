-- =====================================================
-- BASE DE DATOS: CONSTRUCTORA
-- =====================================================

-- 1. Tabla CLIENTES
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(150)
);

-- 2. Tabla EMPLEADOS
CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    telefono VARCHAR(20)
);

-- 3. Tabla PROVEEDORES
CREATE TABLE proveedores (
    id_proveedor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- 4. Tabla MATERIALES
CREATE TABLE materiales (
    id_material SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    unidad_medida VARCHAR(20),
    precio_unitario DECIMAL(10,2)
);

-- 5. Tabla PROYECTOS
CREATE TABLE proyectos (
    id_proyecto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    fecha_inicio DATE,
    fecha_fin DATE,
    presupuesto DECIMAL(12,2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- 6. Tabla ASIGNACIONES
CREATE TABLE asignaciones (
    id_asignacion SERIAL PRIMARY KEY,
    id_empleado INT NOT NULL,
    id_proyecto INT NOT NULL,
    fecha_asignacion DATE,
    rol VARCHAR(50),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

-- 7. Tabla COMPRAS
CREATE TABLE compras (
    id_compra SERIAL PRIMARY KEY,
    id_proyecto INT NOT NULL,
    id_material INT NOT NULL,
    id_proveedor INT NOT NULL,
    cantidad DECIMAL(10,2),
    fecha_compra DATE,
    precio_total DECIMAL(12,2),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
    FOREIGN KEY (id_material) REFERENCES materiales(id_material),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);