import UIKit

// REPEAT WHILE == DO WHILE
    //  Index  0 1 2 3 4 5 6 7 8
var numeros = [1,2,3,4,5,6,7,8,9]  // Array
var i = numeros.count - 1    // cuenta la cantidad de números dentro del array y le resta uno para saber la ultima posicion del index

repeat{
    numeros.remove(at:i) // remueve en el index i (arranca del ultimo hasta el primero)
    i -= 1               // le resta 1 al index para que luego pueda repetir la operacion en un index menor
    print("Cantidad de elementos : \(numeros.count)")
    print("i = \(i)")
}while (numeros.count > 0) // Tener en cuenta que debe ser mayor a cero y no igual ya que iterará una vez más y dará error

print("El arreglo está vacio, su cantidad de elementos es \(numeros.count)")


// EJEMPLO CON NÚMERO ALEATORIO

var numeroAleatorio : Int
var n = 0
repeat {
    n += 1
    numeroAleatorio = Int(arc4random_uniform(20))  // arc4random es para UnInt por lo que debemos hacerlo INT
    print("El ciclo lleva un \(n) cantidad de iteraciones")
    print("El numero aleatorio es = \(numeroAleatorio)")
}while(numeroAleatorio != 8)

print("Se ha finalizado el sorteo")
