import UIKit

// Extensiones

let myMeters : Double = 500

// Pasar metros a kilometros utilizando una funcion (Metodo anticuado)
func metersToKms (meters : Double) -> Double {
    return meters/1000
}

print(metersToKms(meters: myMeters))

// Metodo utilizando una extensión
// Palabra reservada extension

extension Double {
    var Km : Double{
        return self / 1000  // Deber retornar el numero ingresado y dividirlo por 1000
    }
    var m : Double{
        return self         // Self indica que es el mismo ya que asumimos que el numero Double estará en metros
    }
    var cm : Double{
        return self * 100   // Deber retornar el numero ingresado y multiplicarlo por 100
    }
}
print(myMeters.Km)
