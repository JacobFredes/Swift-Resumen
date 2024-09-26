import UIKit

// PROTOCOLOS
// NOS PERMITE DEFINIR UN MODELO DE METODOS , PROPIEDADES Y OTROS REQUISITOS PARA QUE UNA CLASE, UNA ESTRUCTURA O UNA ENUMERACIÓN SE ADAPTEN A ELLOS (UN PROTOCOLO OBLIGA A QUE UNA CLASE ,UNA ESTRUCTURA O UNA ENUMERACIÓN ADOPTEN UNA SERIE DE PROPIEDADES Y FUNCIONES)

// PROTOCOLO PARA OBLIGAR A QUE CLASES , ESTRUCTURAS Y ENUM TENGAN UNA SERIE DE VARIABLES O FUNCIONES
// palabra reservada protocol , luego el nombre comienza con mayuscula
protocol PersonProtocol {
    //Definimos un modelo que luego se va a implementar
    //variables (Muy importante definir lo siguiente
    // var nombre: String {get}    variable que solo se puede acceder
    // var apellido: String {set}  variable que solo se puede asignar
    // var edad: Int {get set}     Podemos escribir el valor de la propiedad y leer
    
    var name: String {get set}
    var surname: String {get set}
    var age: Int {get set}
    
    func fullname() -> String // Función que retorna un string
}

//IMPLEMENTAR PROTOCOLOS EN ESTRUCTURAS
// Recordar que los nombres de las estructuras tambíen empiezan con mayuscula
// Se coloca luego del nombre de la estructura
// En el momento que nos tire el error de "Does not conform to protocol. ... le tenemos que dar a fix en "add stubs for conformance" para que agregue esos items.
struct Programmer: PersonProtocol{
    // variables del protocolo
    var name: String
    var surname: String
    var age: Int
    // variable creada exclusivamente de forma manual para esta estructura
    var languague: String
    
    // Por legibilad de código es conveniente colocar las funciones debajo de las variables.
    //función del protocolo
    func fullname() -> String {
        return "Se llama \(name) su apellido es \(surname), tienen \(age) y su lenguaje preferido es \(languague)"
    }
    
}

struct Teacher: PersonProtocol {

    var name: String
    var surname: String
    var age: Int
    var subject: String
    
    func fullname() -> String {
        return "Se llama \(name) su apellido es \(surname), tiene \(age) años e inparte la materia de \(subject)"
    }
}

// Creamos objeto en función a las clases Programmer y Teacher

let myProgrammer = Programmer(name: "Jacob", surname: "Fredes", age: 32, languague: "Swift")
let myTeacher = Teacher(name: "Moure", surname: "Dev", age: 34, subject: "Programación")

// Imprimimos los datos utilizando la funcón interna de cada clase
print(myProgrammer.fullname())
print(myTeacher.fullname())


