import UIKit

// FUNCIONES CON PARAMETROS INTERNOS
// nombre (parametro)
print("Soy una función")


// FUNCIONES HECHAS DISPONIBLES
print("Hola mundo")

             // CREAR UNA FUNCION DESDE CERO SIN QUE RESIVA PARAMETROS PARA PODER LLAMARLA
// func nombre (){ funcionalidad}
// EJEMPLO 1
func saludo (){
    print("Hola mundo")
}
saludo() //FORMA DE LLAMARLA

// EJEMPLO 2
func suma2 (){
    var numero = 2 + 2
}
suma2()


            // CREAR UNA FUNCION DESDE CERO QUE RESIVA 1 PARAMETRO  PARA PODER LLAMARLA
func cuadradoNumero (numero:Int){            // (x : Int)
        let numeroCuadrado = numero * numero // x * x
        print(numeroCuadrado)
}
cuadradoNumero(numero: 2)                    // (x : 2)

        // CREAR UNA FUNCION DESDE CERO QUE RESIVA MULTIPLES PARAMETROS Y QUE CONTENGA VALOR DE RETORNO
        // -> implica el valor de retorno (tipo)
//FUNCION CON VALOR DE RETORNO
func cuboDe(numero: Int) -> Int{
    let numeroCubo = numero * numero * numero
    return numeroCubo // Si o si debemos declarar el resultado mediante return
}

var resultado = cuboDe(numero: 10)
print(resultado)

// FUNCION CON MULTIPLES PARAMETROS
func saludarAlumnos (nombre: String, mensaje: String){
    print("hola \(nombre) \(mensaje)")
}
saludarAlumnos(nombre: "Jacob", mensaje: "bienvenido a la mejor clase del mundo")

// // FUNCION CON MULTIPLES PARAMETROS Y VALOR POR DEFAULT
                                     // valor por default asignado en parametros
func saludarDefault (nombre: String, mensaje: String = "bienvenido"){
    print("hola \(nombre) \(mensaje)")
}
saludarDefault(nombre: "Jacob")

// VALORES MULTIPLES DE RETORNO EN UNA FUNCIÓN SWIFT

func listaNombres () -> [String]{ // array de tipo string
    let arregloNombres = ["Jose", "Maria", "Lucas"]
    return arregloNombres
}

var nombres = listaNombres() // llamamos a la función asignandosela a una variable
print(nombres)

// FUNCIONES CON PARAMETROS EXTERNOS
// AÑADIR NOMBRE A PARAMETROS EXTERNOS
                 //Nombres de parametros Internos MateriaUno, MateriaDos, MateriaTres a secas
                 // Si especificamos los nombres podemos llamarlos mejor externamente
func calPromedio(matematica materiaUno: Double, fisica materiaDos: Double, sociales materiaTres: Double) -> Double{
    return (materiaUno + materiaDos + materiaTres)/3
}
// Los parametros externos se utilizan fuera de la función para llamarla
let calPromedioMeterias = calPromedio(matematica: 8, fisica: 6, sociales: 10) // Usamos los parametros externos asignados para que el código sea mas legible y entendible
print(calPromedioMeterias)
