import Foundation

// TYPE CASTING (TE MUESTRA EL TIPO DE VARIABLE (VALIDACIÓN))

// Variables de diferentes tipos
let myString = "Brais"
let myInt = 31

//Clase
class MyClass{
    var name : String!
    var age  : Int!
}

//Objeto creado
let myClass = MyClass()

myClass.name = "Brais Moure" // Invocamos la propiedad y le asignamos un valor
myClass.age  = 21            // Invocamos la propiedad y le asignamos un valor
 
// Creamos un ARRAY
// Tengamos en cuenta que los array deben tener los mismos tipos de datos peeeero haciendo que sea de tipo : Any podemos colocar dentro cualquier tipo de dato
let myArray: [Any] = [myString, myInt, myClass]

// FORMA LARGA DE VER EL TIPO DE VALORES UTILIZANDO FOR Y UN ARRAY
// Recorremos el array con un for

for item in myArray {
    // Type casting
    if item is String{
        // Downcasting (Convierte el tipo de elemento a uno más restringido (de any a string por ejemplo)
        let myItemString = item as! String // Se desempaqueta de forma forzada con !
        print("Item es de tipo String y tiene el valor de \(myItemString)")
    }else if item is Int{
        // Downcasting (Convierte el tipo de elemento a uno más restringido (de any a string por ejemplo)
        let myItemInt = item as! Int // Se desempaqueta de forma forzada con !
        print("Item es de tipo Int y tiene el valor de \(myItemInt)")
    }else if item is MyClass{
        // Downcasting (Convierte el tipo de elemento a uno más restringido (de any a string por ejemplo)
        let myItemMyClass = item as! MyClass // Se desempaqueta de forma forzada con !
        print("Item es de tipo MyClass y tiene el valor de \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}

// FORMA CORTA PARA HACER LO ANTERIOR (VALIDACIÓN DE DATOS)
for item in myArray{
    if let myItemString = item as? String{ // Comprueba si es de tipo String si es asi crea la variable y luego puede ser usada
        print("--- Item es de tipo String y tiene el valor de \(myItemString)")
    }else if let myItemInt = item as? Int  {
        print("--- Item es de tipo Int y tiene el valor de \(myItemInt)")
    }else if let myItemMyClass = item as? MyClass{
        print("--- Item es de tipo MyClass y tiene el valor de \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}
