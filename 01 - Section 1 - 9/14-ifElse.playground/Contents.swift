import UIKit

// IF ELSE STATEMENTS
/*  COMPARISON OPERATORS
Kotlin supports the usual logical conditions from mathematics:
 >  Greater than                 a > b
 <  Less than                    a < b
 == Equal to                     a == b
 >= Greater than or equal to     a >= b
 <= Less than or equal to        a <= b
 != Not equal to                 a != b
*/

/*
Swift has the following conditionals:

- Use IF to specify a block of code to be executed, if a specified condition is true
- Use ELSE to specify a block of code to be executed, if the same condition is false
- Use ELSE IF to specify a new condition to test, if the first condition is false
*/

var edad = 18
var dinero = 1000
var sexoFemenino = true

// if utilizando OR
if (edad >= 18 || dinero > 100) {
    print("Puedes entrar!")
}else{
            print("No puedes entrar!")
}

//Forma de negar un resultado con !
if !(edad >= 18 || dinero > 100) {
    print("Puedes entrar!")
}else{
    print("No puedes entrar!")
}

// if utilizando OR y AND
if ((edad >= 18 || dinero > 100) && sexoFemenino) {
    print("Puedes entrar!")
}else{
    print("No puedes entrar!")
}

// IF ANIDADOS

if edad >= 18 {
    print ("Si puede entrar, eres mayor")
    // LOS IF DENTRO DE OTRO IF TIENEN QUE CUMPLIRSE EN CASCADA TODOS PARA QUE FUNCIONE si uno es falso va a else principal
    if dinero > 250 {
        print (" y además tienes dinero")
        if sexoFemenino {
            print(" además eres el cliente ideal")
        }
    }
}else {
    print("vete a otro bar")
}
