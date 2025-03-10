//
//  SinopsisView.swift
//  MoviesApp
//
//  Created by Veronica on 26/1/25.
//
import SwiftUI

struct SinopsisView: View {
    let pelicula: pelicula //Declaramos una propiedad que recibe una instancia del modelo pelicula. La vista espera que se le pase una pelicula para mostrar sus detalles

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Imagen del cartel
                Image(pelicula.cartel)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 5)

                // Título
                Text(pelicula.titulo)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                // Año y estrellas alineados
                HStack { //Colocamos estrellas y años de manera horizontal
                    HStack(spacing: 2) {
                        ForEach(0..<5) { index in
    //Generamos un bucle que crea 5 estrellas
                        Image(systemName: index < pelicula.estrellas ? "star.fill" :"star")
    //Si el índice está dentro del numero e estrellas de la pelicula, se muestra una estrella rellena (star.fill) de lo contrario, muestra una estrella vacía (star)
                                .foregroundColor(.yellow)
    //Cambiamos el color de las estrellas a amarillo
                        }
                    }
                    Spacer()
                    Text(pelicula.anho)
                        .font(.subheadline)
                        .foregroundColor(.yellow)
                }

                // Descripción
                Text("Descripción")
                    .font(.headline)
                    .foregroundColor(.yellow)
                Text(pelicula.descripcion)
                    .font(.body)
                    .foregroundColor(.white)

                // Duración y Nacionalidad en la misma línea
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Duración")
                            .font(.headline)
                            .foregroundColor(.yellow)
                        Label("\(pelicula.duracion) min", systemImage: "clock")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }

                    Spacer()

                    VStack(alignment: .trailing, spacing: 4) {
                        Text("Nacionalidad")
                            .font(.headline)
                            .foregroundColor(.yellow)
                        Label(pelicula.nacionalidad, systemImage: "globe")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                }
                .padding(.vertical, 8)
                .background(Color.black.opacity(0.2))
                .cornerRadius(10)
            }
            .padding()
        }
        .background(Color("redCarpet")) // Fondo igual que la primera pantalla
        .ignoresSafeArea()
        .navigationTitle("Detalles")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SinopsisView_Previews: PreviewProvider {
    static var previews: some View {
        SinopsisView(pelicula: pelicula.datosEjemplo[0])
    }
}
