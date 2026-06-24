# facturas_VCDI_BD

## Trabajo Práctico N.º 2 - Administración y Gestión de Bases de Datos

### Integrantes
- Lucas Blanco
- Nicolás Meijide
- Dante Ramírez

### Curso
5.º Año Computación

### Lenguaje
SQL

---

## Descripción del Proyecto

Este trabajo consiste en el diseño e implementación de una base de datos destinada a la gestión de facturación de un hospital. El sistema permite registrar pacientes, médicos, turnos, recetas y medicamentos, facilitando la generación y administración de facturas asociadas a la atención médica.

---

## Objetivos

- Diseñar un modelo entidad-relación (MER).
- Implementar el modelo físico mediante SQL.
- Garantizar la integridad de los datos utilizando claves primarias y foráneas.
- Gestionar información médica y administrativa.
- Automatizar consultas mediante procedimientos almacenados.

---

## Entidades Principales

### Paciente
Almacena los datos personales de los pacientes.

### Médico
Contiene la información de los profesionales y sus especialidades.

### Turno
Registra las consultas realizadas entre pacientes y médicos.

### Receta
Representa las prescripciones emitidas durante una consulta.

### Medicamento
Almacena los medicamentos disponibles y su precio unitario.

### Factura
Registra el costo total asociado a una receta médica.

### Contiene
Tabla intermedia encargada de relacionar recetas con medicamentos.

---

## Funcionalidades Implementadas

- Registro de pacientes.
- Registro de médicos.
- Gestión de turnos médicos.
- Emisión de recetas.
- Asociación de medicamentos a recetas.
- Generación de facturas.
- Consultas mediante procedimientos almacenados.

---

## Herramientas Utilizadas

- SQL
- MySQL
- MySQL Workbench
- GitHub

---

## Conclusión

Este proyecto permitió aplicar los conocimientos adquiridos en Administración y Gestión de Bases de Datos mediante el desarrollo de una solución capaz de organizar y relacionar la información necesaria para la gestión de facturación hospitalaria de manera eficiente y estructurada.
