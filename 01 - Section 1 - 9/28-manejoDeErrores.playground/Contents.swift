import UIKit

// ERROR HANDLING
// Manejo de ERRORES
// Como progrmador debemos evitar que sucedan errores, en caso de que suceda poder manejarlo de la mejor forma posible dando la mayor cantidad de información posible de ellos
// Con swift es muy simple definir y tratar errores
// En los entornos que utilizan Swift un error desencadena en que nuestra aplicación se cierre, la app produce un crash que haga que desaparezca y nos enviará a la home desde iphone
// para que una función pueda lanzar errores debemos agregar throws ante del tipo de retorno  final
func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int{
    
    //controles (Lanzamos los errores)
    if (firstNumber == nil) {
        // Se procesa este bloque de código
        // llamamos la palabra reservada throw el enum creado y el tipo de error
        throw sumError.firstNumberNil
    }else if (secondNumber == nil){
        // Se procesa este bloque de código
        // llamamos la palabra reservada throw el enum creado y el tipo de error
        throw sumError.secondNumberNil
    }else if firstNumber! < 0 || secondNumber! < 0{
        // llamamos la palabra reservada throw el enum creado y el tipo de error luego a los parametros debemos asignarles las variables desempaquetadas de forma forzada ya que no pueden ser nulo cuando se los definió
        throw sumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    // Realizar la suma
    return firstNumber! + secondNumber!
    // Desempaquetado forzado de ambas por que se supone que si tienen valor a pesar de ser opcionales
}

// DEFINICIÓN DE TIPO DE ERRORES

enum sumError : Error{     // Error {} aplica el protocolo de error , todos los case representaran un error
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int) // Un error puede recibir parametros
}

// PROPAGACIÓN DE ERRORES (forma individual)

// Llamamos a nuestra función de prueba
// Con la clausula try antes de la funcion a llamar lo hacemos de forma segura
print(try sum(firstNumber: 100, secondNumber: 50)) // Se produce la suma correctamente, da 150
// Primer caso intentando sumar nil con 50
// An error was thrown and was not caught: , esto indica que la app se va a detener inesperadamente
// __lldb_expr_23.sumError.firstNumberNil muestra correctamente donde se encuentra el error
//print(try sum(firstNumber: nil, secondNumber: 50))    <----- Sacarle los // para poder verlo

// PROPAGACION DE ERRORES (Forma grupal) Para controlar correctamente todos los errores

do{
    // función prototipo para inducir el error
    print(try sum(firstNumber: 100, secondNumber: nil))
} catch sumError.firstNumberNil {
    print("El primer número es nulo")
} catch sumError.secondNumberNil {
    print("El segundo número es nulo")
} catch sumError.numberNegative(let firstNumber, let secondNumber){ // Retorna dos constantes let supuestamente pero a mi no me aparecia de una como a mouredev
    print("Uno de los terminos o ambos son negativos, \(firstNumber), \(secondNumber)")
}
    

