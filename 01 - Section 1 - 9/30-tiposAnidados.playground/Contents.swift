import Foundation

// TIPOS ANIDADOS
// Estructura que representa una pieza de ajedrez
struct ChessPice {
    // Se crean dos constantes para crear una pieza que contenga estos dos valores
    let color : Color      // Constante de tipo Enum Color
    let type  : PieceType  // Constante de tipo Enum PieceType
    
    
    // Enum que nos permitirá determinar el color de la pieza de ajedrez
    enum Color : String {
        case white = "Blanca", black = "Negra"
    }
    // Enum que nos servirá para determinar el tipo de pieza de ajedrez
    enum PieceType: String {
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballo", pawn = "Peón"
        // Esta estructura dentro del enum hace referencia a la cantidad de piezas que tengamos de cada tipo
        struct Number{
            let number : Int // Contendrá una constante de tipo entero
        }
        // Creamos una variable de tipo Number (la estructura que acabamos de crear arriba) para acceder al número de piezas desde fuera de la estructura
        //  variable : NombreDeLaEstructura
        var number: Number {
            // La variable se calculará ejecutando un switch
            // En este caso el self actuará sobre el ambiente de PieceType (Es el contexto donde se ejecuta) en esta caso el enum
            switch self{
            case .king:      return Number(number: 1) // Lo que se retorna es una la struct Number y se incializa su constructor
            case .queen:     return Number(number: 1)
            case .rock:      return Number(number: 2)
            case .bishop:    return Number(number: 2)
            case .knight:    return Number(number: 2)
            case .pawn:      return Number(number: 8)
            }
        }
    }
    // Creamos una variable que nos muestre mediante un String el valor de nuestra pieza de ajedrez, su color y el tipo de pieza
    var description : String {
        // Podemos utilizar un if para que si el valor es igual a 1 retorne un string en singular
        if type.number.number == 1 {
            return "Hay \(type.number.number) pieza de ajedrez de tipo \(type.rawValue) y su color es \(color.rawValue)"
        }else{ // Si no lo muestra en plural
            return "Hay \(type.number.number) piezas de ajedrez de tipo \(type.rawValue) y son de color \(color.rawValue)"
        }
    }
    
}
// Creamos una constante de tipo ajedrez para llamar a la estructura
let myPiece = ChessPice(color: .black, type: .pawn)
// Imprimimos la variable constante anteriormente y la variable interna "description"
print(myPiece.description)
