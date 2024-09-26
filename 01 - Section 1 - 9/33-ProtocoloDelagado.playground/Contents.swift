import UIKit

// PROTOCOLO DELAGADO
// Nos permite comunicar dos clases en dos sentido y forma asincrona

protocol SecondClassProtocol{
    func call()
}


class FirstClass: SecondClassProtocol{
    
    func callSecond(){
        //Creamos una constante y la instanciamos
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call(){
        print("Estoy de vuelta")
    }
}

class SecondClass{
    
        var delegate: SecondClassProtocol?
        func callFirst(){
            print("Arranco primero aquí")
            sleep(5)
            delegate?.call()
        }
    }
    
let firstClass = FirstClass()
firstClass.callSecond()

/*
 Supongamos que tenemos un chef que debe preparar platos de comida y 
 entregarlos al garzón, para que este a su vez los sirva al cliente. Para
 hacer esto, el chef delega trabajo sobre el garzón. En primera instancia,
 podemos pensar que es muy sencillo: se crea un método en la clase Garzón
 para que sirva el plato, el chef lo invoca y listo. De ser así, no se
 necesitaría ningún protocolo delegado.

 Pero... ¿cómo sabría el chef qué plato debe preparar? ¿Quién debe 
 avisarle? A pesar de que el chef es quien delega sobre el garzón, quien
 establece primero la comunicación es el garzón (0:33 comunicar dos clases
 en sentido inverso). Ahora es cuando cobra sentido el protocolo delegado.

 Como es lógico, el chef no entregará directamente el plato a los 
 clientes, sino que delegará ese trabajo en el garzón. Mientras el chef
 prepara el plato, el garzón puede hacer otras cosas, como anotar un
 pedido. Creo que eso es lo más importante del protocolo delegado.

 Esto en código sería algo así:
 */

// Definimos el protocolo para los garzones. Así el chef podrá indicar que el plato que ha preparado ya está listo para ser servido por algún garzón.

protocol ProtocoloGarzon {
    func servirClientePlato(de: String)
}

//Definimos la clase Chef. Tiene la variable delegate, donde recibirá a algún garzón. Cuando el chef haya terminado de preparar su plato, llamará a su delegado para que lo sirva mediante el método servirClientePlato

// Este es el delegante
class Chef {
    var delegate: ProtocoloGarzon?
    func prepararPlato(de comida: String) {
        print("Chef: -Soy el más rápido. En sólo 3 segundos tengo el plato de \(comida)")
        sleep(3)
        print("Chef: -El plato está listo para ser servido")
        delegate?.servirClientePlato(de: comida)
    }
}

//Y por último, la clase Garzon. Esta clase cumple con el ProtocoloGarzon porque tiene definido el método servirClientePlato. El método pedirAlChef inicia la conversación con la clase Chef

// Este es el delegado
class Garzon: ProtocoloGarzon {
    
    func servirClientePlato(de plato: String) {
        print("Garzon: -Wow qué rápido")
        print("Garzon: -Entregando \(plato) a clientes")
    }
    
    func pedirAlChef(comida: String) {
        let ferranAdria = Chef()
        // El garzón se convierte a sí mismo en delegado del chef
        ferranAdria.delegate = self
        print("Garzon: -Chef, necesito un plato de \(comida)")
        ferranAdria.prepararPlato(de: comida)
    }
}

// Ahora definimos a nuestro garzón, para que haga el pedido al chef.
let garzon = Garzon()
garzon.pedirAlChef(comida: "Patatas Bravas")

//Esto arroja como salida
/*
 Garzon: -Chef, necesito un plato de Patatas Bravas
 Chef: -Soy el más rápido. En sólo 5 segundos tengo el plato de Patatas Bravas
 Chef: -El plato está listo para ser servido
 Garzon: -Wow qué rápido
 Garzon: -Entregando Patatas Bravas a clientes
 */

/*PD: Haciendo la analogía con lo explicado en el video, la clase 
 FirstClass es Garzon. Los métodos callSecond y call serían
 respectivamente pedirAlChef y servirClientePlato. La clase SecondClass es
 Chef. Su método callFirst es prepararPlato.
 
*/
