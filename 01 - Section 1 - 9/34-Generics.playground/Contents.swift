import UIKit

var greeting = "Hello, playground"

// GENERICS / Código generico

// Nos va a permitir escribir funciones y tipos flexibles que son reutilizables y que van a funcionar con diferentes tipos que se adapten a unos requisitos. De esta manera vamos a poder abstraear nuestro código y evitar la duplicacion de operaciones

//   FUNCIÓN SIN GENERICOS (ya que solo te permite ingresar valores INT)
// Funcion que intercambiará entre si valores de 2 enteros
// palabra reservada inout (parametros de entrada que van a entrar y salir sin la necesidad de retornarlo) se coloca antes del tipo
func swapTwoInts(a: inout Int, b: inout Int){
    let tempA = a
    a = b
    b = tempA
    
}
// variables a utilizar para el intercambio (deben ser int si o si)
var myFirstInt = 3
var mySecondInt = 9
// Print antes de ejecutar el swap
print("El primer valor es \(myFirstInt) y el segundo es \(mySecondInt)")
// los valores inout se ingresan con un & por delante, en este caso utilizamos las variables asignadas a los valores
// Invocamos la función sin genéricos
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
// Print luego de la función del swap
print("El primer valor es \(myFirstInt) y el segundo es \(mySecondInt)")


// FUNCIÓN CON GENÉRICOS
func swapTwoGenerics<T>(a: inout T, b: inout T){
    let tempA = a
    a = b
    b = tempA
    
}

// variables a utilizar para el intercambio (deben ser del mismo tipo ya sea String, Int,Float etc no diferentes)
var myFirstGeneric = "Ocho"
var mySecondGeneric = "Nueve"

// Print antes de ejecutar el swap con generics
print("- El primer valor es \(myFirstGeneric) y el segundo es \(mySecondGeneric)")
// Invocamos la función con genéricos
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
// Print luego de la función del swap
print("- El primer valor es \(myFirstGeneric) y el segundo es \(mySecondGeneric)")
