import UIKit

// CLASES SON COMO MOLDES (BASE PRINCIPAL) PARA CREAR OBJETOS
class automovil{
    // Propiedades
    var color = "Neutro"
    var numeroLlantas = 4
    var precio = 0
    
    // Métodos o funciones
    func encender() -> Bool {
        return true
    }
    func apagar() -> Bool {
        return true
    }
    func acelerar() -> Bool {
        return true
    }
}

// Instanciamos o creamos un objeto
var miObjetoMazada = automovil() // Declaramos y asignamos el objeto a la clase (asociamos)
// Podemos acceder a sus propiedades
miObjetoMazada.color
miObjetoMazada.numeroLlantas
miObjetoMazada.precio
// Podemos acceder a sus métodos o funciones
miObjetoMazada.acelerar()
miObjetoMazada.apagar()
miObjetoMazada.encender()
// Podemos asignarle nuevos valores
miObjetoMazada.precio = 10000 //Playground solo muestra que pertenece a la clase automovil
print(miObjetoMazada.precio)
// Creamos otro objeto pero reutilizando la clase
var miObjetoFiat = automovil()
miObjetoFiat.color = "Blue"      // Asignamos valor nuevo
miObjetoFiat.numeroLlantas = 3   // Asignamos valor nuevo
miObjetoFiat.precio = 20000      // Asignamos valor nuevo

// Mostramos ambos objetos por consola con sus propiedades
print("MAZADA")
print("Color : \(miObjetoMazada.color)")
print("Número de llantas : \(miObjetoMazada.numeroLlantas)")
print("Precio : \(miObjetoMazada.precio)")
print("FIAT")
print("Color : \(miObjetoFiat.color)")
print("Número de llantas : \(miObjetoFiat.numeroLlantas)")
print("Precio : \(miObjetoFiat.precio)")
