import UIKit
// CICLO FOR
// Los ciclos for sirven para itinerar sobre una coleccion de datos items y ejecutar un bloque de código por cada uno de los items de la colección o rango

// FOR CON RANGO
var contadora = 0
//  variable  rango(cuantas veces se ejecutará)
for numero in 1...4{
    contadora += 1
    print(numero)
}

// FOR CON COLECCIONES
var paises = ["MX", "EEUU", "JP"]
for pais in paises {
    print(pais)
}

// FOR CON DICCIONARIOS (CLAVE : VALOR)
var paisesDiccionario = ["MX" : "Mexico", "EEUU": "Estados unidos", "JP": "Japon"]
for (clave,valor) in paisesDiccionario {
    print("\(clave)-----\(valor)")
}

// EJEMPLO CON ARRAYS
var numeros = [1,2,3,4,5]
var suma = 0

for numero in numeros {
    suma = numero + suma
}
print("La suma de los numeros es : \(suma)")

// EJEMPLO CON ARRAY DE STRINGS (Recorre todo el Array

var daysOfWeek: [String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]



// i es la posicion del array (por lo tanto recorre tantas posiciones este tenga), puedes cambiarle el nombre si quieres tambien
for i in daysOfWeek{
    print("El dia contenido dentro del for es : \(i)")
}

var names: [String] = ["Holga", "Marcos", "Jacob"]
for nombre in names{
    print("Tu nombre es : \(nombre)")
}

// Recorrer un listado y buscar algo dentro (usamos for cuando sabemos el tamaño del array (en este caso los 7 dias de la semana)
for day in daysOfWeek{
    if day == "Viernes"{
        print("Efectivamente el día viernes está dentro del listado")
        break // Termina el bucle, deja de iterar definitivamente
    }else{
        print("No es Viernes")
    }
}
// CONTINUE
var monthofYear: [String] = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

for month in monthofYear{
    if month == "Agosto"{
        print("Efectivamente el mes Agosto está dentro del listado")
        continue // Corta en esta iteracion pero continua el ciclo normalmente
    }else{
        print("En esta posición no está Agosto")
    }
}

// Ejercicio 1
// Escribe una función que reciba un némro e imprima su tabla de multiplicar del 1 al 10

func multiplication (_ number:Int){
    for i in 1...10{
        var result = i * number // Variable de la cuenta
        print("\(number) por \(i) es = \(result)")
    }
}
// Llamamos a la función y le colocamos un número
multiplication(3)

// Ejercicio 2
// Escribe un programa que calcule la suma de todos los números pares del 1 al 100 y muestre el resultado. Para saber si un número es par se tiene que dar la siguiente condición (número % 2 == 0
var totalSum = 0 //Acumulador
for i in 1...100{
    if (i % 2 == 0){
        totalSum += i
    }
}
print("El resultado de la suma total es : \(totalSum)")

// Solucion utilizando continue
var totalSum2 = 0
for i in 1...100{
    if (i % 2 != 0){ // Si es impar corto e itero nuevamente
        continue
    }
    totalSum2 += i
}
print("El resultado de la suma total es : \(totalSum2)")

// Ejercicio 3
// Escribe una función que cuente el número de vocales en una palabra y lo pinte . TIP : Las palabras (Strings) pueden recorrerse con bucle for

func vocalCounter(_ text: String){
    var totalVocal : Int = 0
    for caracter in text {
        // No reconocerá las vocales mayusculas por lo tanto hay que pasar el string o todo a minuscula o todo a mayuscula con .lowecased
        switch caracter.lowercased(){
        case "a", "e", "i", "o", "u" : totalVocal += 1
        case "á", "é", "í", "ó", "ú" : totalVocal += 1
        default: continue
        }
    }
    print("El número de vocales para \(text) es de \(totalVocal)")
}
// No reconocerá las vocales mayusculas por lo tanto hay que pasar el string o todo a minuscula o todo a mayuscula
vocalCounter("Ángloparlante")

