//
//  Peliculas.swift
//  MoviesApp
//
//  Created by Veronica on 25/1/25.
//

import Foundation

struct pelicula: Identifiable {
    let id = UUID()
    let titulo: String
    let descripcion: String
    let cartel: String
    let duracion: String
    let anho: String
    let nacionalidad: String
    let estrellas: Int
}


extension pelicula{
    static var datosEjemplo = [
        pelicula(titulo: "Cadena perpetua", descripcion: "Dos hombres encarcelados establecen una fuerte amistad a lo largo de los años, encontrando consuelo y redención eventual a través de actos de decencia común.", cartel: "cadena_perpetua", duracion:"142", anho: "1994", nacionalidad: "Estados Unidos",estrellas: 5),
        pelicula(titulo: "El pianista", descripcion: "Narra la historia real de Władysław Szpilman, un pianista judío-polaco que lucha por sobrevivir durante la ocupación nazi en la Segunda Guerra Mundial, utilizando su talento y resiliencia en medio del horror.", cartel: "el_pianista",duracion:"148", anho:"2002", nacionalidad:"Reino Unido",estrellas: 5),
        pelicula(titulo: "La lista de Schindler", descripcion: "En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, Oskar Schindler se preocupa gradualmente por su fuerza laboral judía después de presenciar su persecución por parte de los nazis.", cartel: "la_lista_de_schindler",duracion:"195", anho:"1993", nacionalidad:"Estados Unidos",estrellas: 5),
        pelicula(titulo: "La milla verde", descripcion: "Las vidas de los guardias en el corredor de la muerte se ven afectadas por uno de sus reclusos: un hombre negro acusado de asesinato infantil y violación, pero que tiene un don misterioso.", cartel: "la_milla_verde", duracion:"180", anho:"1999", nacionalidad:"Estados Unidos",estrellas: 4),
        pelicula(titulo: "La vida es bella", descripcion: "Un padre judío-italiano que utiliza su imaginación y humor para proteger a su hijo de los horrores de un campo de concentración nazi, transformando la tragedia en un juego para mantener viva la esperanza.", cartel: "la_vida_es_bella",duracion:"116", anho:"1997", nacionalidad:"Italia",estrellas: 5),
        pelicula(titulo: "Matrix", descripcion: "Un hacker informático aprende de rebeldes misteriosos sobre la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores.", cartel: "matrix",duracion:"131", anho:"1999", nacionalidad:"Estados Unidos",estrellas: 4),
        pelicula(titulo: "El caballero oscuro", descripcion:"Cuando la amenaza conocida como El Joker emerge de su pasado misterioso, causa estragos y caos en la gente de Gotham.", cartel:"el_caballero_oscuro",duracion:"152", anho:"2008", nacionalidad:"Estados Unidos",estrellas: 4),
        pelicula(titulo:"Pulp Fiction",descripcion:"La vida de dos sicarios de la mafia, un boxeador, la esposa de un gánster y dos bandidos se entrelazan en cuatro historias de violencia y redención.",cartel:"pulpfiction",duracion:"153",anho:"1994", nacionalidad:"Estados Unidos",estrellas: 5),
        pelicula(titulo:"El Señor de los Anillos",descripcion:"Gandalf y Aragorn lideran el mundo de los hombres contra el ejército de Sauron para distraerlo de Frodo y Sam mientras se acercan al Monte del Destino con el Anillo Único.",cartel:"senhoranillos",duracion:"201", anho:"2003",nacionalidad: "Nueva Zelanda",estrellas: 4),
        pelicula(titulo:"Forrest Gump",descripcion:"Los presidios de Forrest Gump, un hombre con un coeficiente intelectual bajo, tienen lugar durante varios eventos históricos estadounidenses.",cartel:"forrestgump",duracion:"142", anho:"1994", nacionalidad:"Estados Unidos",estrellas: 5)
    ]
    
}

