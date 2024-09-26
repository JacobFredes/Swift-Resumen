import UIKit

// SWITCH , ALTERNATIVA A IF ANIDADO CUANDO TENEMOS QUE EVALUAR MUCHOS CASOS
// En este caso podemos evaluar strings
let country = "FR"

// SINTAXIS

switch country {
    case "ES"  :  print("El idioma es Español")
    case "MX"  :  print("El idioma es Español")
    case "CO"  :  print("El idioma es Español")
    case "ARG" :  print("El idioma es Español")
    case "EEUU":  print("El idioma es Ingles")
    //Bloque default en caso de que no se ejecute ninguno de los de arriba
    default:      print("No conocemos el idioma")
}

// PODEMOS EVALUAR NÚMEROS

let age = 20
switch age {
    case 0,1,2    : print("Eres un bebe")        // numeros individuales
    case 3...10   : print("Eres un niño")        // rango de números e incluyendolos
    case 11..<16  : print("Eres un adolescente") // rango pero con el extremo no incluido
    case 16..<70  : print("Eres un adulto")      // rango pero con el extremo no incluido
    case 70..<100 : print("Eres un anciano")     // rango pero con el extremo no incluido
    default       : print("💻")                  // emoticon CTRL + CMD + ESPACIO
}

// SWITCH CON ENUM
// Creamos el enum
enum personalData{
    case name
    case surname
    case address
    case phone
}

let userData: personalData = .phone

switch userData{
    case .name:
    print("Estamos editando el nombre")
    case .surname:
    print("Estamos editando el apellido")
    case .address:
    print("Estamos editando la dirección")
    case .phone:
    print("Estamos editando el telefono")
}

// Utilización del where
// Ejemplo : Crea una funcion que reciba un numero y con la ayuda de un SWITCH pinte en pantalla si el número es positivo, negativo o cero

func positiveNegativeSwitch (number: Int){
    switch number {
        case let number where number > 0 : print("El \(number) es positivo")
        case let number where number < 0 : print("El \(number) es negativo")
        default : print("El \(number) es CERO")
    }
}

positiveNegativeSwitch(number: 0)
