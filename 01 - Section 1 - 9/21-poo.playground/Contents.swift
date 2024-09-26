import UIKit

// POO Programación Orientada a Objetos
// Se basa en la interacción de objetos
// Los objetos tienen propiedades y métodos (se denota como func estos ultimos)
// ej un auto (objeto) tiene (4 llantas, 4 puertas, y es rojo)(propiedades)
//    tiene métodos (encender, avanzar, acelerar, frenar)(Son funcionalidades que tienen los objetos)

// Clases : Identifican al objeto (Te permite tener un prototipo con propiedades estandar que puede ser reutilizado)
/*
 OBJETO : AUTO
 CLASE : AUTOMOVIL (Es el tipo basicamente de objeto)
 PROPIEDADES : ROJO , 4 RUEDAS, 4 PUERTAS
 MÉTODOS : ENCENDER, APAGAR, ACELERAR, FRENAR
 */

// La creación de un objeto se denomina "instanciar" ya que provienen de instanciar una clase
// Termino de herencia (provienen desde el mismo origen (de la misma clase)
/*
 Ejemplo
 CLASE : AUTOMOVIL
 OBJETO: FIAT
 PROPIEDADES : ROJO, CAJA AUTOMATICA
 OBJETO : HONDA
 PROPIEDADES : AZUL , CAJA MANUAL
 */


// SINTAXIS
// estructura  nombre
struct cuadrados {
    //propiedades
    var ancho = 10
    var alto = 10
    //puede contener una funcion (metodos)
    func areaCuadrado2() -> Int {
        return ancho * alto
    }
}
// instanciar la estructura
var miCuadrado = cuadrados()
// Accedemos a sus propiedades
print(miCuadrado.ancho)
print(miCuadrado.alto)
// Podemos hacer operaciones con sus propiedades de forma externa
var areaCuadrado = miCuadrado.ancho * miCuadrado.alto
print(areaCuadrado)

// podemos llamar una función que tenga dentro (recordar usar la instancia de la estructura
print(miCuadrado.areaCuadrado2()
)
