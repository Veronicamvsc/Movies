//
//  ContentView.swift
//  MoviesApp
//
//  Created by Veronica on 25/1/25.
//

import SwiftUI //Es el framework que permite crear interfaces de usuario de forma declarativa

struct ContentView: View { //ContentView es la estructura que define la vista principal.
    //Usamos los datos de prueba
    let peliculas = pelicula.datosEjemplo 
    //Configuración del Grid
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    /*Colums define un arreglo con dos columnas flexibles para la cuadricula
     .flexible() hace que cada columna se ajuste al ancho disponible. Array(repeating: etc) crea dos columnas iguales
    */
    
    var body: some View { //Var body es obligatorio en cada vista, define como se verá la interfaz del usuario
        NavigationView { //Crea un contenedor que permite navegar entre diferentes vistas
            ScrollView { //Permite que el contenido de la vista sea desplazable verticalmente
                VStack(alignment: .leading) {// Organizamos los elementos en una columna y alineamos los elementos a la izquierda
                    // Título principal
                    HStack { //De esta manera colocamos el titulo dentro de la fila
                        Text("🎬 Movies 🎬")
                            .font(.largeTitle) //Aplicamos un tamaño grande
                            .fontWeight(.black) //Hacemos el texto mas grueso
                            .foregroundColor(Color("gold"))//Usamos el color personalizado definido en los Assets
                            .shadow(color: .black.opacity(0.8), radius: 3, x: 0, y: 2) //Agregamos sombra
                            .padding() //Agregamos espacio alrededor del texto
                        
                    }
                    .padding(.horizontal) //Agregamos espacio horizontal a todo el HStack
                    
                    // Subtítulo
                    Text("Películas seleccionadas")
                        .font(.title2) //Usamos un tamaño de fuente más pequeño que el titulo.
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .shadow(color: .black.opacity(0.5), radius: 2, x: 0, y: 2)
                    
                    // Grid de películas
                    LazyVGrid(columns: columns, spacing: 20){
    //Con LazyVGrid diseñamos una cuadricula vertical optimizada, columns: colums; usamos las dos columnas flexibles que definimos antes y con spacing añadimos un espacio de 20 entre las filas.
                        ForEach(peliculas) { pelicula in
//Itera sobre la lista de peliculas para crear un elemento de la cuadricula por cada pelicula.
                            NavigationLink (destination:SinopsisView (pelicula:pelicula)) {
//De esta manera navegamos a SinopsisView
                                VStack {
//Coloca la imagen y el título de cada película en vertical
                                    Image(pelicula.cartel)
//De esta manera cargamos el cartel desde Assets
                                        .resizable()
//La imagen se ajusta al espacio disponible.
                                        .scaledToFit()
//Mantiene las proporciones originales de la imagen
                                        .frame(height: 150)
//Restringe la altura
                                        .cornerRadius(10)
//Rodeamos los bordes
                                        .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 5)
                                    Text(pelicula.titulo)
                                        .font(.body)
                                        .foregroundColor(.black)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(2)
//Limitamos el texto a un máximo de dos líneas
                                        .padding(.top, 5)
                                }
                            }
                            
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            .background(Color("redCarpet"))
//Cambiamos el fondo de la vista al color personalizado
            .ignoresSafeArea()
//Con esto hacemos que el fondo ocupe toda la pantalla
        }
    }
}


struct ContentView_Previews: PreviewProvider { //De esta manera podemos previsualizar la vista en Xcode
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown) //Muestra la vista en orientación vertical
        }
    }
}
