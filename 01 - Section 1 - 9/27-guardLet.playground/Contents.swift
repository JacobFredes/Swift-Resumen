import UIKit
// Sentencia de salida rápida
// GUARD LET (Opcion a if let)

var myOptionalString : String? // Declaramos la variable de tipo String Optional

func myFunction(){
    guard let myString = myOptionalString else {
        // Este bloque de código se ejecutará si el valor de myOptionalString es nulo
        print("La variable contiene un valor nulo")
        return
        // El return pararia la ejecucion del programa , en este caso como es un playground lo crearemos dentro de una función para que se pueda ver mejor
    }
    print("El valor de myString es : \(myString)")
}

//llamamos a la función
myFunction()     // Nos muestra que es nulo
myOptionalString = "Ahora no contiene un valor nulo" // Le asignamos un valor
myFunction()     // La volvemos a llamar y ahora muestra un print y termina de ejecutar la función


/*
 if let (Ejecutamos un código cuando el valor no es nulo de una o todas las variables si o si) podemos usar else if let para hacerlo anidado tambien
 guard let (Ejecutamos un código solo si el valor es nulo y para la ejecución del programa)

 */
