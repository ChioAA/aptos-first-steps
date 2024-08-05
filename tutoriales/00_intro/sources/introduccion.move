module introduccion::practica_aptos {
    use std::debug::print;
    use std::string::utf8;
    use std::string::append;

    // Funcion principal que concatena y muestra el logo en formato UTF-8
    fun practica() {
        // Crear vectores UTF-8 para cada linea del logo
        let logo1 = utf8(b"\nMMMMMMMMMMMMMMMMWKkdc;'..          ..';cdkKWMMMMMMMMMMMMMMMM");
        let logo2 = utf8(b"\nMMMMMMMMMMMMWXkl,.                        .,lkXWMMMMMMMMMMMM");
        let logo3 = utf8(b"\nMMMMMMMMMMXk:.                                .ckXMMMMMMMMMM");
        let logo4 = utf8(b"\nMMMMMMMWKo'                               ...    'oKWMMMMMMM");
        let logo5 = utf8(b"\nMMMMMMXo.                               .:OX0l.    .oXMMMMMM");
        let logo6 = utf8(b"\nMMMMMNd;;;,;;,,,,,,,,,,,,,,,,,,,;;;,,,;lOWMMMW0l;,;;:dXMMMMM");
        let logo7 = utf8(b"\nMMMMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMMMMMMMMMWWWWWWWMMMMM");
        let logo8 = utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKXWMMMMMMMMMMMMMMMMMMMMM");
        let logo9 = utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx,.'oXMMMMMMMMMMMMMMMMMMMM");
        let logo10 = utf8(b"\nN0kkkkkkkkkkkkkkkkkkkkkkkkkkkkkko,     'okkkkkkkkkkkkkkkkk0N");
        let logo11 = utf8(b"\nx.                                                        .x");
        let logo12 = utf8(b"\n;                              .;;.                        ;");
        let logo13 = utf8(b"\n.                           .cx0WW0c.                      .");
        let logo14 = utf8(b"\nolllllllllllllllllllllllllld0WMMMMMW0olllllllllllllllllllllo");
        let logo15 = utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        let logo16 = utf8(b"\nMMMMMMMMMMMMMMMMMMMMMMMXkkXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        let logo17 = utf8(b"\nMMMMMMMMMMMMMMMMMMMMMXd'  'xXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        let logo18 = utf8(b"\nkoollloolllllllllollc'      'clllllllllllllllllllllllllllllx");
        let logo19 = utf8(b"\nl                                                          c");
        let logo20 = utf8(b"\n0'                 .cl;                                   '0");
        let logo21 = utf8(b"\nWx.              .oKWMNk,                                .xW");
        let logo22 = utf8(b"\nMW0xxxxxxxxxxxxxkXWMMMMMNOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk0WM");
        let logo23 = utf8(b"\nMMMMMMMMMMMMWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        let logo24 = utf8(b"\nMMMMMMMMMMXd;,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM");
        let logo25 = utf8(b"\nMMMMMMMWKd,    .lOKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKXWMMMMMMM");
        let logo26 = utf8(b"\nMMMMMMMNx'        ................................;kNMMMMMMM");
        let logo27 = utf8(b"\nMMMMMMMMWKd,.                                  .,dKWMMMMMMMM");
        let logo28 = utf8(b"\nMMMMMMMMMMMN0o,.                            .,o0NMMMMMMMMMMM");
        let logo29 = utf8(b"\nMMMMMMMMMMMMMMWKxl;..                  ..;lxKWMMMMMMMMMMMMMM");
        let logo30 = utf8(b"\nMMMMMMMMMMMMMMMMMMWKko:'.          .';okKWMMMMMMMMMMMMMMMMMM");

        // Crear un vector vacio para almacenar el logo completo en formato UTF-8
        let logo_utf8 = utf8(b"");

        // Concatenar cada linea del logo en el vector final
        append(&mut logo_utf8, logo1); 
        append(&mut logo_utf8, logo2); 
        append(&mut logo_utf8, logo3); 
        append(&mut logo_utf8, logo4); 
        append(&mut logo_utf8, logo5);
        append(&mut logo_utf8, logo6); 
        append(&mut logo_utf8, logo7); 
        append(&mut logo_utf8, logo8); 
        append(&mut logo_utf8, logo9); 
        append(&mut logo_utf8, logo10);
        append(&mut logo_utf8, logo11); 
        append(&mut logo_utf8, logo12); 
        append(&mut logo_utf8, logo13); 
        append(&mut logo_utf8, logo14); 
        append(&mut logo_utf8, logo15);
        append(&mut logo_utf8, logo16); 
        append(&mut logo_utf8, logo17); 
        append(&mut logo_utf8, logo18); 
        append(&mut logo_utf8, logo19); 
        append(&mut logo_utf8, logo20);
        append(&mut logo_utf8, logo21); 
        append(&mut logo_utf8, logo22); 
        append(&mut logo_utf8, logo23);
        append(&mut logo_utf8, logo24); 
        append(&mut logo_utf8, logo25);
        append(&mut logo_utf8, logo26); 
        append(&mut logo_utf8, logo27); 
        append(&mut logo_utf8, logo28); 
        append(&mut logo_utf8, logo29); 
        append(&mut logo_utf8, logo30);

        // Imprimir el resultado final del logo
        print(&logo_utf8); 
    }

    // Prueba de la funcion practica
    #[test]
    fun prueba() {
        practica();
    }
}
