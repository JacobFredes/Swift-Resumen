import UIKit

// SET
// Tambien llamado CONJUNTOS, es una mezcla entre los ARRAYS y DICCIONARIOS
// En un set podremos añadir valores de  un solo tipo al igual que los arrays pero estos valores no estarán ordenados al igual que en los diccionarios y además tendrá una caracteristica básica e importantisima, que los valores que incluyamos dentro del SET no podrán estar repetidos cosa que si se podía en los arrays y en los diccionarios no ya que no se podían repetir las claves

// Forma de inicializar un set vacio
var mySet = Set<String>()
// Forma alternativa inicializar un set vacio
let mySet2 : Set<String> = [] // Con corchetes como los arrays
// Inicializamos un SET con valores, fijarse que no se repiten
let mySet3 : Set<String> = ["Moure", "Jacob", "Martin", "Moure"]
// Si inicializamos un SET sin tipos los valores lo determinaran
let mySet4 : Set = [32,45,65,98]

// Inserción de uno en uno
mySet.insert("Brais")
mySet.insert("Lucas")
mySet.insert("Brais")
mySet.insert("Nando")
mySet.insert("Tobias")
print(mySet)  // No aparece el nombre repetido
print(mySet4) // Notar que no tiene orden, cada que vez se muestra distinto


// ACCESO
// forma de saber si un set contiene un string
if mySet.contains("Moure"){
    print("Existe")
}else{
    print("No existe")
}

// MODIFICACION
mySet.remove("Brais")
print(mySet)

// ACCESO Y MODIFICACIÓN EN BASE AL INDICE
// usamos if let con el motivo de que realmente se elimine si existe
if let index = mySet.firstIndex(of: "Tobias"){
    mySet.remove(at: index)
}

print(mySet)

// ITERAR SETS

// Primero agregamos más valores
mySet.insert("Carlos")
mySet.insert("Maxi")
mySet.insert("Antonella")
mySet.insert("Pedro")
mySet.insert("Ben")
print(mySet)

// utilizamos un for por cada elemento que contenga nuestro set se va a imprimir
for myElement in mySet{
    print(myElement)
}

// OPERACIÓN DE CONJUNTOS

// Sets a utilizar
let myIntSet1: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// INTERSECCIÓN (Creación de un nuevo conjunto de los valores en común
// en este caso 2 y 3 (No importa el orden)
print(myIntSet1.intersection(myIntSet2))

// DIFERENCIA SIMETRICA (Crea nuevo conjunto con valores que no tengan en comun ambos set)
// 0 ,1 ,4 ,5 , 6 ,7 (No importa el orden)
print(myIntSet1.symmetricDifference(myIntSet2))

// UNION (Crea un nuevo set con todos los valores de ambos conjuntos pero no repite)
// 0 ,1 ,2 , 3, 4 ,5 , 6 ,7 (No importa el orden)
print(myIntSet1.union(myIntSet2))

// SUSTRACCIÓN (Al primer set se le restan los valores en común que tenga el set 2)
// Entonces quedaría 1 , 4 , 5 (No importa el orden)
print(myIntSet1.subtracting(myIntSet2))
// Si lo hacemos al revez nos quedaría 0 , 6, 7 (No importa el orden)
print(myIntSet2.subtracting(myIntSet1))
