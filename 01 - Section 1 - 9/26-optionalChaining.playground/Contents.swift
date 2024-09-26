import Foundation

// OPTIONAL CHAINING (CADENAS OPCIONALES)


class Student{
    var name: String?
    var book: Book?  // Conectamos esta propiedad a otra clase externa creada luego
}
class Book{
    var pages: Int?
}

let myStudent = Student() //Constante de tipo estudiante (Instanciamos un objeto a partir de una clase
print(myStudent.name)         // Mostramos la propiedad name
print(myStudent.book?.pages)  // Mostramos las paginas del del libro que esta vinculado a la class Student
// De esa forma se pudo encadenar varias varibales optionals

// Para comprobar si tiene valor o no podemos utilizar los enlaces opcionales encadenados

if let pages = myStudent.book?.pages {
    //Solo se ejecutara esta parte cuando myStudent book y pages sean distinto de nulo
    print("El tiene \(pages) páginas")
}else{
    print("El libro no tiene páginas")
}

// En caso de que se le asignen valores dira lo siguiente
myStudent.name = "Jacob"
let myBook = Book()  // Instanciamos un objeto a parti de la class Book
myBook.pages = 50    // Le asignamos un valor
myStudent.book = myBook

// nuevo if para chequear
if let pages = myStudent.book?.pages, let name = myStudent.name {
    //Solo se ejecutara esta parte cuando myStudent book y pages sean distinto de nulo
    print("El alumno \(name) tiene \(pages) páginas")
}else{
    print("El libro no tiene páginas")
}
