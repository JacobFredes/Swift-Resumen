import UIKit

// CLOSURE (BLOQUES DE CÓDIGO) (No pueden tener nombre de parametros externos)
// El bloque de código debe ser asignado a una constante o variable dependiendo del caso
let firstClosure = {
    (materiaUno: Double,materiaDos: Double, materiaTres: Double) -> Double in
    return (materiaUno + materiaDos + materiaTres)/3
}

// Para llamar el closure debemos
firstClosure(100,22,88) // Solo le incertamos los valores
print(firstClosure(100,22,90))
