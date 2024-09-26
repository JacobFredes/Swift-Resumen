import UIKit

// TUPLE
//  Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

//  You can create tuples from any permutation of types, and they can contain as many different types as you like. There’s nothing stopping you from having a tuple of type (Int, Int, Int), or (String, Bool), or indeed any other permutation you require.


//La tupla puede contener diferentes tipos de datos
// Index        .0      .1     .2   .3
//             String String  Int  Double
var persona = ("Juan","Fredes",30, 1.86) //Tupla creada

//Acceder a un valor de la tupla
persona.1
print(persona.1)
 
// Asignamos a los valores de la tupla variables para luego poder ser utilizadas
var (name,surname,age,height) = persona
name
surname
age
height

// la declaramos de entrada con variables y valores de tuplas

var namedTuple = (nombre: "Juan", apellido:"Dior", edad:41, altura: 1.5)
namedTuple.nombre
namedTuple.apellido
namedTuple.edad
namedTuple.altura
