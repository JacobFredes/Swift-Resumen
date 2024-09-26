import UIKit

// STRUCTURE VS CLASS

// Diferencias principales
// COPIA es independiente, es una entidad como tal
// REFERENCIA apunta hacia lo mismo, si haces una modificación, la base (A lo que haces referencia) se modificará

// Ejemplo de class
class classAutomovil{
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

var miObjetoMazda = classAutomovil()  // Instanciamos el objeto (lo creamos)
miObjetoMazda.precio                  // Mostramos la propiedad precio
miObjetoMazda.precio = 5000           // Asignamos a la propiedad precio un nuevo valor

print(miObjetoMazda.precio)           // Mostramos por consola

// Ejemplo de structure (Contiene la misma estructura interna)
struct structAutomovil {
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

var myStructMazda = structAutomovil()  // Instanciamos la estructura (lo creamos)
myStructMazda.precio                   // Mostramos la propiedad precio
myStructMazda.precio = 5000            // Asignamos a la propiedad precio un nuevo valor

print(myStructMazda.precio)            // Mostramos por consola

// Creamos un segundo objeto y una segunda estructura y a ambas le asignamos la class y struct hechos en un principio
// Nuevo objeto (Instancia de una clase estas son por referenicia)
var mySecondObjetoMazda = miObjetoMazda
mySecondObjetoMazda.precio = 6000        // Le asignamos nuevo precio
print(mySecondObjetoMazda.precio)
// Nueva estructura (Instancia de una estructura estas son por copia)
var mySeconfStructMazda = myStructMazda
mySeconfStructMazda.precio = 8100
print(mySeconfStructMazda.precio)

print(miObjetoMazda.precio)   // Al cambiar la propiedad a la referencia se cambio de forma global cuando se editó el segundo objeto
print(myStructMazda.precio)   // La estructura conserva el valor original , ya que cada copia tiene su propio lugar en memoria
