import UIKit

// OPTIONALS BINDING = ENLACES OPCIONALES

var myOptionalString : String?
var myOptionalString2 : String?
var myOptionalString3 : String?

//myOptionalString = "Brais"
myOptionalString2 = "Lucas"
myOptionalString3 = "Lucas"

// OBTENER SU VALOR DE FORMA SEGURA
// Este tipo de if nos sirve para saber si una variable de tipo opcional contiene un valor no nulo
// if let o var (se crea una variable o constante que guardará de forma temporal la variable opcional que será evaluada) esta no podrá ser invocada fuera del ambito del if
// Se pueden evaluar muchas al mismo tiempo
// Esto se llama encadenamiento de enlaces opcionales (Sirve para validar datos)
if var myString = myOptionalString,
   var myString2 = myOptionalString2,
    var myString3 = myOptionalString3 {
    // Se ejecutará cuando las 3 variables (myOptionalString1..2..3 tengan valores no nulos)
    print("No contiene valores nulos \(myString) \(myString2) \(myString3)" )
}else{
    // Se ejecuta cuando una de ellas contiene un valor nulo
    print("Una o todas contiene un valor nulo")
}

// print(myString) "Cannot find myString in scope" no podremos acceder a las variables creadas temporalmente dentro del if

// OBTENER SU VALOR DE FORMA SEGURA
// DESEMPAQUETADO FORZADO (Obligamos a la variable que nos diga su valor)(Tenemos que estar seguro que tenga un valor la variable a desempaquetar)
// Se le debe colocar un ! a la variable que se la declaró como opcional a un comienzo ya que en este caso sabemos que se le asigno mas arriba un valor, estando vacia xCode nos da un warning ya que estamos accediento a una variable opcional que tiene un valor nulo pero como ya sabemos que tiene un valor lo forzaremos a que lo muestre
//print(myOptionalString!) // Comentar esta linea antes de querer correr el siguiente if

// En caso de que quisieramos intentar acceder a una variable que contenga un valor nulo, produciria un crash en la app se detiene y hace que se cierre subitamente Fatal error: Unexpectedly found nil while unwrapping an Optional value
// Para prevenir esto podriamos utilizar un if

if (myOptionalString != nil) {
    print(myOptionalString!)
}else{
    print("Cuidado muchacho vas a romper el celular")
}
