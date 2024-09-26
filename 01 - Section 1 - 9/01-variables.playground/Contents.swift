import UIKit

// Constants and Variables

/*
 Constants and variables associate a name (such as
 maximumNumberOfLoginAttempts or welcomeMessage) with a value
 of a particular type (such as the number 10 or the string
 "Hello"). The value of a constant can’t be changed once it’s
 set, whereas a variable can be set to a different value in
 the future.
 */

/*
LET = CONSTANTE CON REFERENCIA INMUTABLE
the let keyword, the value cannot be changed/reassigned.
*/
let maximumNumberOfLoginAttempts = 10

/*
VAR = VARIABLE CON REFERENCIA MUTABLE
When using var, you can change the value whenever you want:
*/
var currentLoginAttempt = 0

/*
You can also declare a variable without assigning the value var red, green, blue: Double
However, this is only possible when you specify the type:
 */
var name: String
    name = "John"
    print("El nombre ingresado es \(name)") //String interpolation

/*
 You can define multiple related variables of the same type on a single line, separated by commas, with a single type annotation after the final variable name:
*/
var nombre, apellido, nacionalidad : String

// Declarar y asignar en una sola linea

let miNombreCompleto = "Jacob Fredes", miFecha = "1-1-2992", lugarNacimiento = "Mendoza"

/* EXTRA DATA

A variable can have a short name (like x and y) or more descriptive names (age, sum, totalVolume).

The general rule for Swift variables are:

- Names can contain letters, digits, underscores, and dollar signs
- Names should start with a letter
- Names can also begin with $ and _ (but we will not use it in this tutorial)
- Names are case sensitive ("myVar" and "myvar" are different variables)
- Names should start with a lowercase letter and it cannot contain whitespace
- Reserved words (like Kotlin keywords, such as var or String) cannot be used as names
- Once you’ve declared a constant or variable of a certain type, you can’t declare it again with the same name, or change it to store values of a different type. Nor can you change a constant into a variable or a variable into a constant.
*/
