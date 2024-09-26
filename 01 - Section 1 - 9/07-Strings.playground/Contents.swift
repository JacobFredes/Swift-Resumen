import Foundation

//Declarar de forma Explicita
let myString1 : String = "Hola soy una cadena de texto"

// Swift reconoce que lo que se ingresa es un texto porende no es necesario declarar el tipo de variable
// Se recomienda no hacerlo para que sea menos código

let myString2 = "Hola de nuevo it's me"

// ESCRIBIR STRING EN VARIAS LINEAS PERO CON SALTO DE LINEA (Se muestra en el tramo final (ver ojo de la terminal))

let myString3 = """
Bienvenidos al curso de Swift
Espero que os parezcan los String
un material entretenido de aprender
"""
// ESCRIBIR STRING EN VARIAS LINEAS PERO SIN SALTO DE LINEA (Solo es visual para el código más mo para mostrarlo al final (mirar el ojo en la terminal)
let myString4 = """
Bienvenidos al curso de Swift \
espero que os parezcan los String \
un material entretenido de aprender
"""
// STRING VACIO

let myEmptyString = ""
//forma alternativa
let myEmptyString2 = String()

//FUNCIONES EN STRINGS

let texto1 = "Esto va a SER UN TEXTO"
let texto2 = "Esto va a SER UN TEXTO"
// Nos muestra el texto en minúscula
print(texto1.lowercased())
// Nos muestra el texto en mayúscula
print(texto1.uppercased())
// Funcion que busca contenido
let name1 = "Jacob"
let name2 = "Lucas"
let myContent = "Mi nombre es Lucas"
print(myContent.contains(name1)) // True o False

// Funcion para verificar si es un string vacio
let myEmptyString3 = ""
myEmptyString3.isEmpty // Muestra true o false
myEmptyString3 == ""   // Forma sencilla

// Concatenación de varias strings
var myString5 = "Bienvenidos" + " " + "al curso de Swift"
// Concatenar Strings utilizando la variable (recordar que sea variable y no constante)
myString5 += " ¿Os está gustando la clase?"

// INTERPOLACIÓN CON OTRAS VARIABLES O CONSTANTES
let name = "Jacob"
let apellido = "Fredes"
let personalInfo = "Mi nombre es \(name) y mi apellido es \(apellido)"
