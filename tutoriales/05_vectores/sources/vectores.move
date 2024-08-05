module aptosz3::vectores {
    use std::debug::print;
    use std::vector::{borrow}; // Importa solo las funciones necesarias para trabajar con vectores.

    // Funcion principal para trabajar con vectores y matrices.
    fun practica() {
        // Crea una matriz de 3x3 con valores iniciales.
        let matriz: vector<vector<u8>> = vector[
            vector[10, 20, 30],
            vector[40, 50, 60],
            vector[70, 80, 90],
        ];

        // Accede a cada fila de la matriz usando borrow.
        let fila1: vector<u8> = *borrow(&matriz, 0);
        let fila2: vector<u8> = *borrow(&matriz, 1);
        let fila3: vector<u8> = *borrow(&matriz, 2);

        // Imprime los elementos de la primera fila.
        let valor1: u8 = *borrow(&fila1, 0);
        let valor2: u8 = *borrow(&fila1, 1);
        let valor3: u8 = *borrow(&fila1, 2);
        print(&valor1);
        print(&valor2);
        print(&valor3);

        // Imprime los elementos de la segunda fila.
        let valor4: u8 = *borrow(&fila2, 0);
        let valor5: u8 = *borrow(&fila2, 1);
        let valor6: u8 = *borrow(&fila2, 2);
        print(&valor4);
        print(&valor5);
        print(&valor6);

        // Imprime los elementos de la tercera fila.
        let valor7: u8 = *borrow(&fila3, 0);
        let valor8: u8 = *borrow(&fila3, 1);
        let valor9: u8 = *borrow(&fila3, 2);
        print(&valor7);
        print(&valor8);
        print(&valor9);
    }

    // Funcion de prueba que llama a la funcion principal.
    #[test]
    fun prueba() {
        practica();
    }
}
