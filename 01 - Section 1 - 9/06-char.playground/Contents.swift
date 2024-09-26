import Foundation

// Caracter (Solo almacenan un caracter para ocupar menos memoria)
// Declaracion de forma EXPLICITA
let myCaracter1 : Character = "\u{E9}"

// Declaracion de forma IMPLICITA
let myCaracter2 = "\u{24}" //Nomenclatura Unicode

// CARACTERES ESPECIALES (\n, \r , t\ , \O , \' ...) (Ver ojo en la terminal)
// \n salto de linea
let myString1 = "Bienvendios al\n curso de Swift"
// \t tabulador (espacio prolongado)
let myString2 = "Bienvendios al\n \t curso de Swift"

// EMOJIS
//Posicionarse dentro de "" y apretar la siguiente combinación de teclas Ctrl + cmd + espacio para que aparezca el menú de emojis
let myEmoji = "🇦🇷"
