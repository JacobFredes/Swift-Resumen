import UIKit

// Componentes a utilizar en MAIN

//
// Label = Etiqueta de texto de clase UIlabel (User Interface)
// Button = Etiqueta de boton

/* Para conectar parte de IU (main.Storyboard) con el código (viewController.swift) se debe hacer lo siguiente
 1 - ir a la class ViewController
 2 - Seleccionar label o button con ctrl (apretado) +  click izquierdo y posicionarlo dentro de la class Viewcontroller preferentemente al principio, recordar que la connection es Outlet , en type UIlabel ya que proviene de esa clase y weak en caso de que queramos que perdure poco en memoria una vez dejada de utilizar
 3 - Aparecerá un circulo en la izquierda la que nos permitirá seleccionarlo y nos mostrará la etiqueta colocada en el storyboard (hace referencia a él)
 4 - Al declarar la etiqueta arriba dentro de la class viewcontroller ahora podremos utilizar o cambiar sus métodos y  propiedades desde dentro de la función viewDidLoad() que se encuentra más abajo ejemplo:
 
    nombreDeEtiqueta.text = "He cambiado"
 5 - Las acciones o funciones se deben colocar debajo se configuran de la siguiente manera en el caso de los botones
    a - Connection = Action
    b - name = asociado a la accion
    c - type = any or UIbutton
    d - touch up inside ..... hay muchos investigar bien
    e - Sender? buscar mas info

*/

 class ViewController: UIViewController {

     @IBOutlet weak var etiqueta: UILabel!
     
 
     // Esta función se activa cuando la vista ya fue cargado en memoria
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
     
     // Accion de un botón al apretar encima de el
     @IBAction func cambiarTexto(_ sender: Any) {
         // cambia el contenido del texto
         etiqueta.text = "Hola Mundo"
     }
 }

