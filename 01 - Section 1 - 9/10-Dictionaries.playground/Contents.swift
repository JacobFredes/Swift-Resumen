import UIKit

// SINTAXIS DICCIONARIOS
// La clave del diccionario es UNICA

//Forma cásica de declararlos      Clave , Valor
let myClassicDictionary = Dictionary <Int,String>()
//Forma más actual     Clave : Valor
var myModernDictionary = [Int:String]()

// Tener en cuenta que a diferencia de los arrays dentro de un diccionario no aparecerán ordenados ya que la busqueda se hará por la clave

//Añadir varios datos al mismo tiempo (Depaso se inicializa)
myModernDictionary = [001:"Juan", 002:"Brais"]

//Añadir un solo dato por vez
myModernDictionary [003] = "Jacob"
myModernDictionary [004] = "Lucas"
myModernDictionary [005] = "Norman"

// ACCESO A UN DATO
myModernDictionary[002]
print(myModernDictionary[002])

//Modificar un dato forma actual
myModernDictionary[002] = "Brais Moure" //Se sobreescribe
//Modificar un dato forma extensa (clasica)
myModernDictionary.updateValue("Lucas Moure", forKey: 002)
myModernDictionary[002]

// BORRAR DATOS forma acortada
myModernDictionary[002] = nil // Nulo
myModernDictionary[002]       // Accedemos al dato y da nulo

// BORRAR DATOS forma clasica
myModernDictionary.removeValue(forKey: 003)
myModernDictionary[003]
