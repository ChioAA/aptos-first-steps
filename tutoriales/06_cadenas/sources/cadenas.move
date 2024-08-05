module aptosz3::cadenas {
    use std::debug::print;
    use std::string::{utf8, append};

    fun practica() {
        // Cadena con el poema de 4 lineas en una sola variable
        let poema = utf8(b"Te vi un punto y, flotando ante mis ojos,\n         la imagen de tus ojos se quedo,\n         como la mancha oscura orlada en fuego\n         que flota y ciega si se mira al sol.");

        // Creacion de 4 variables, una por cada linea
        let linea1 = utf8(b"Te vi un punto y, flotando ante mis ojos,\n");
        let linea2 = utf8(b"         la imagen de tus ojos se quedo,\n");
        let linea3 = utf8(b"         como la mancha oscura orlada en fuego\n");
        let linea4 = utf8(b"         que flota y ciega si se mira al sol.");
        
        // Concatenacion de las variables en una sola variable final
        let poema_concatenado = utf8(b"");
        append(&mut poema_concatenado, linea1);
        append(&mut poema_concatenado, linea2);
        append(&mut poema_concatenado, linea3);
        append(&mut poema_concatenado, linea4);

        // Impresion de ambas variables
        print(&utf8(b"Poema Original:\n"));
        print(&poema);
        print(&utf8(b"\nPoema Concatenado:\n"));
        print(&poema_concatenado);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
