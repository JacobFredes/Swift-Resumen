import UIKit

// ARC Automatic Reference Counting

// Al crear instanciar objetos de variables o constantes hacen que la memoria utilizamos sea superior ya que cada vez que se utiliza almacena referencias la cual al momento que degemos de utilizarlas esperamos que swift sea capaz de eliminar la referencia en si y la memoría que ocupaba , ya que si no se eliminan los objetos en un punto que nuestro dispositivo físico no tendría más memoria y daría un error en Java se denomina Garbage Collector pero ARC lo hace de una forma más rápida y óptima

// Swift lleva un contador interno de las veces que utilizamos una instancia. Este contador se llama retain count

// - Ejemplo instanciamos una clase MyClass() y se la asignamos a una variable myClass1
// var myClass1 = MyClass()
// - Al tener una primer referencia a MyClass() el contador pasa de 0 a 1
// MyClass Retain Count = 1
// - Si instanciamos esa clase a otra variable
// var myClass2 = myClass1
// - El contador pasa de 1 a 0
// MyClass Retain Count = 2
// Ahora imaginemos que nuestra primer variable pasar a valer nil
// myClass1 = nil
// - El contador pasa de 2 a 1 ya que perdemos la primer referencia
// myClass2 = nil
// - El contador pasa de 1 a 0 ya que perdemos la segunda referencia
// Luego de esto lo que swift hace es eliminar de memoria la instancia de myClass(), liberando asi totalmente la memoria que ocupaba esa clase

// Memorie Leak
// La liberación de la memoria ocurre muy rápido pero puede llegar a suceder en algunas ocaciones un problema, que no pueda acceder a la referencia (Es muy complicado llegar a estos problemas), esto suele suceder cuando tenemos una referencia cirucular fuerte (strong)
// Ejemplo de una referencia circular fuerte
/*
 var myClass1 = MyClass1()
 var myClass2 = MyClass2()
 Es como decir que de las clase1 tenemos una referencia a la clase 2 y de la clase 2 una referencia a la clase 1, es como si hubiesemos creado un circuito cerrado de referencia, por mas que pasen a ser nulas o las eliminemos swift no será capaz de eliminar la memoria
 myClass1.myClass2 = myClass2
 myClass2.myClass1 = myClass1
 
 para solucionar esto debemos hacer que una de ellas sea una referencia débil (weak) , esta referencia no incrementa su contador a la hora de instanciarse
 
 weak var myVariable : myClass?
 
 */
