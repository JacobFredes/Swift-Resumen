import UIKit

// SINTAXIS

enum personalData {
    case name
    case surname
    case address
    case phone
    // case name,surname,address,phone (en una sola línea)
}

// currentData es del tipo personalData
var currentData : personalData = .name
var input = "Jacob"

currentData = .phone
input = "653439449303"

// Enumeraciones con valores asociados (Datos Complejos)
// Forma de asegurarse que tipo de datos debe ingresar
enum complexPersonalData {
    case name(String)
    case surname(String,String)
    case address(String,Int)
    case phone(Int)
}

var complexCurrentData: complexPersonalData = .name("jacob")
complexCurrentData = .address("Jamaica", 1583)
complexCurrentData = .phone(29478220284)

// ENUMERACIONES CON EL MISMO TIPO DE VALOR
// En este caso todos deberan ingresar strings
enum rawPersonalData : String {
    //Si queremos que se muestren en español debemos
    case name     = "Mpmbre"
    case surname  = "Apellido"
    case address  = "Direccion"
    case phone    = "Telefono"
}

rawPersonalData.surname.rawValue // Nos muestra el tipo de dato
// int muestra el index , "" string
