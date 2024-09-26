import UIKit
// Swift es un lenguaje tipado muy seguro
// Optionals son una caracteristica de swift que nos ayuda a manejar ausencia de valor representandolas como nil (nulo)
// se representa con un ? luego de su tipo
// Nos permite representar dato que puede o no tener valor
// Que un tipo de dato se le asigne como optional nos permite comprobar como promagramadores si tiene valor o no lo cual será muy util para evitar problemas, es una herramienta muy potente del lenguaje2

// VARIABLE TIPO OPTIONALS

let myStringNumber = "100"            // Numero en string
let myIntNumber = Int(myStringNumber) //Función que hace que un String se transforme en Int? (utilizará optional) siempre y cuando haya un numero dentro de un string

let myWrongStringNumber = "Brais"          // Nombre dentro de un string
//  variable       :Int? (forma de definir de tipo Int optional
let myWrongIntNumber: Int? = Int(myWrongStringNumber) // En este caso al haber un nombre dentro del String mostrará nil

// Creamos un String desde cero con optional para inicializar una variable vacia

var myOptionalString : String? // Si no le asignamos ningun valor para inicializarla , se mostrará como nil (nulo) muy util ya que podriamos utilizarlo con if
print(myOptionalString)

if (myOptionalString != nil){
    print("En efecto el String es no nulo")
}else{
    print("Incorrecto, tiene valor nulo")
}
