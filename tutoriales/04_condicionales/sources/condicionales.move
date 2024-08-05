module aptosz3::acceso_usuario {
    use std::debug::print;
    use std::string::utf8;

    const MENOR_DE_EDAD: u64 = 0; // Codigo de error para indicar que el usuario es menor de edad

    // Funcion que utiliza if-else para verificar el acceso
    public fun verificar_acceso_if_else(edad: u64) {
        if (edad >= 18) {
            print(&utf8(b"Usuario tiene acceso a los contenidos."));
        } else {
            print(&utf8(b"Error: Usuario menor de edad.")); // Imprime mensaje de error
            abort(MENOR_DE_EDAD) // Abortamos la ejecucion con el codigo de error
        }
    }

    // Funcion que utiliza assert para verificar el acceso
    public fun verificar_acceso_assert(edad: u64) {
        assert!(edad >= 18, MENOR_DE_EDAD); // Abortamos la ejecucion con el codigo de error si la edad es menor de 18
        print(&utf8(b"Usuario tiene acceso a los contenidos."));
    }

    // Funciones de prueba que manejan los escenarios de forma controlada
    #[test]
    public fun prueba_verificacion_if_else() {
        // Cambia el valor a 18 para evitar el error
        verificar_acceso_if_else(18); // Cambia este valor para probar diferentes casos
    }

    #[test]
    public fun prueba_verificacion_assert() {
        // Cambia el valor a 18 para evitar el error
        verificar_acceso_assert(18); // Cambia este valor para probar diferentes casos
    }
}
