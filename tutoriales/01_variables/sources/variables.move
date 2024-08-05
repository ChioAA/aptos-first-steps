module aptosz3::tipos_primitivos {
    use std::debug::print;

    // Declara una constante entera con valor 10
    const CONSTANTE_VALOR: u8 = 10; 

    fun practica() {
        // Declara una variable entera con valor 7
        let valor_variable: u8 = 7; 
        
        // Imprime el valor de la constante
        print(&CONSTANTE_VALOR);  
        
        // Imprime el valor de la variable
        print(&valor_variable); 

        // Declara una variable que compara si los números son iguales
        let son_iguales: bool = CONSTANTE_VALOR == valor_variable; 
        
        // Declara una variable que compara si la constante es mayor que la variable
        let constante_mayor: bool = CONSTANTE_VALOR > valor_variable; 
        
        // Declara una variable que compara si ambas comparaciones anteriores son verdaderas
        let comparaciones_totales: bool = son_iguales && constante_mayor; 
        
        // Imprime el resultado de la ultima comparacion
        print(&comparaciones_totales);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
