module aptosz3::academia {
    use std::debug::print;
    use std::string::{String, utf8};
    use std::vector::{empty, push_back};
    use aptos_std::string_utils::debug_string;

    // Reto
    // Crea un struct de una Persona con los campos que gustes. Al menos 3.
    // Por ejemplo: nombre, edad.
    struct Profesor has drop {
        nombre: String,
        edad: u16,
        es_experto: bool,
    }

    // Crea un struct de una Clase (una clase de una escuela) con los campos que gustes.
    // Por ejemplo: materia, horario.
    // Debe incluir el struct Persona en alguno de los campos. Por ejemplo en un campo llamado Maestro.
    struct Curso has drop {
        tema: String,
        horario: String,
        aula: String,
        profesor: Profesor,
    }

    // Crea un struct de una Escuela con los campos que gustes.
    // Por ejemplo nombre, domicilio.
    // Debe incluir un vector de Clases.
    struct Institucion has drop {
        nombre: String,
        ubicacion: String,
        cursos: vector<Curso>,
    }

    // Usa esos struct de manera que tengas una Escuela con un vector de Clases,
    // el cual incluya al menos 2 clases de 2 diferentes maestros.
    // Imprime la variable que crees de la Escuela en consola usando debug_string.
    // Deberia de imprimir todas los campos.
    fun inicializar() {
        let profesor1 = Profesor {
            nombre: utf8(b"Juan Perez"),
            edad: 35u16,
            es_experto: true,
        };

        let profesor2 = Profesor {
            nombre: utf8(b"Laura Martinez"),
            edad: 42u16,
            es_experto: false,
        };

        let curso1 = Curso {
            tema: utf8(b"Historia de Mexico"),
            horario: utf8(b"Lunes y Miercoles 10:00-12:00"),
            aula: utf8(b"Aula 101"),
            profesor: profesor1,
        };

        let curso2 = Curso {
            tema: utf8(b"Programacion en Blockchain"),
            horario: utf8(b"Martes y Jueves 14:00-16:00"),
            aula: utf8(b"Aula 102"),
            profesor: profesor2,
        };

        let cursos = vector[curso1, curso2];

        let institucion = Institucion {
            nombre: utf8(b"Instituto Tecnologico de la CDMX"),
            ubicacion: utf8(b"Av. Reforma #200, CDMX, CP 06500"),
            cursos: cursos,
        };

        print(&debug_string(&institucion));
    }

    #[test]
    fun prueba() {
        inicializar();
    }
}
