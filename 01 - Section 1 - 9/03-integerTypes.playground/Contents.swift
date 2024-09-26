import UIKit
// INTEGER TYPES
/*

 Integersin
 Integers are whole numbers with no fractional component, such as 42 and -23. Integers are either signed (positive, zero, or negative) or unsigned (positive or zero).

 Swift provides signed and unsigned integers in 8, 16, 32, and 64 bit forms. These integers follow a naming convention similar to C, in that an 8-bit unsigned integer is of type UInt8, and a 32-bit signed integer is of type Int32. Like all types in Swift, these integer types have capitalized names.
 
 */

let minValue = UInt8.min // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
let minInt = Int.min
let maxInt = Int.max

// UNSIGNED NUMBERS 0 en adelante
let minUInt = UInt.min
let maxUInt = UInt.max

// SUMA DE INT CON FLOAT
var x = 18             // Forma Implicita Int
var a : Int = 20       // Forma Explicita
var y = 18.8           // Forma Implicita Double
var b : Double = 20.3  // Forma Explicita
var c : Float = 1.4    // Forma Explicita

var sumaEnteros = x + 2
var sumaFlotantes = y + 2.2
// Debo convertir ambos en Double ya que no acepta Int + Float
var suma = Double(x) + Double(y)
//En el caso de la división lo mismo (Puede usarse FLOAT)
var division = Float(x)/5
//Normalmente se usa Double ya que si lo pasamos a int desprecia la parte decimal y puede haber error en precisión

// Convertir un String numerico a Int

let numberExample = "123456"
print(Int(numberExample)!) // Larga optional (123456) o nil en caso de que no sea un string de numeros
