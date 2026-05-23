CREATE TABLE estudiantes (
    id_estudiante SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE matriculas (
    id_matricula SERIAL PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_matricula DATE NOT NULL,

    FOREIGN KEY (id_estudiante)
        REFERENCES estudiantes(id_estudiante)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (id_curso)
        REFERENCES cursos(id_curso)
);
-- Si se elimina un estudiante,
-- se eliminarán automáticamente todas sus matrículas.

-- Si se actualiza el id_estudiante,
-- también se actualizará automáticamente en matriculas.
