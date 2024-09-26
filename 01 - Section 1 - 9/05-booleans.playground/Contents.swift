import UIKit

var estudios = "Universitario" //String
var cedula = false          //Asignación Implicita
var libreria : Bool = false   //Asignación Explicita

print(cedula || libreria) // true or false  = print true
print(cedula && libreria) // true and false = print false
print(!cedula)            // Invierte el resultado a false

// Utilizando booleanos en IF stataments
var salario = 0
if cedula {
    salario = 9000 // Si Cedula is true muestra 9000
}else{
    salario = 1000 // Si Cedula is false muestra 1000
}

// Utilizando expresiones de comparación

if (salario > 2000){
    salario = 20000
}else if (salario < 2000){
    print("estas re pobre heramano")
}


