import UIKit
// 1 - Create xCode
// 2 - Choose the template (Multiplatform , iOS , macOS etc
// 3 - Choose iOS / APP

/*
 product name = Nombre del Proyecto
 team = (Aparecerá la cuenta de Apple ID)
 Organization identifier = (Nombre de la empresa.com y luego tu nombre ejemplo  Vestas.com.fredes)
 Bundle Identifier = Previsualización de la union del Organization Identifier y el nombre del Product name
 Interface = Tecnología para crear interfaces de usuario (Storyboard es el que más piden las empresas)
 lyfe Cycle = En este caso Storyboard utiliza UIKit App Delegate
 Language = Se puede elegir Swift u Objective-C
 User Core Data = Sirve para un tipo de base de datos
 Include Tests =
 
 */

// TARGETS

    // GENERAL
        // Display name = Nombre con el que aparece en el celular
        // Bundle Identifier
        // Version = 1.0 (Primera version de nuestro proyecto antes de subirla a la playstore, si le hacemos un update debemos cambiar a 1.1 etc)
        // Build =

    // DEPLOYMENT INFO
        // iOS 13.2 <> = Aqui podemos modificar el iOS
        // iPhone iPad Mac = Seleccionamos para que dispositivo va a ser la app
        // Main Interface = Seleccionamos la interface principal
        // Device orentation = Seleccionamos Portrait (Portaretrato), Upside down (Boca abajo) Landescape Left or Landscape right
        // Status Bar Style = Default , dark or light content , tambien se puede seleccionar Hide Status Bar , Requires full screen, supports multiple windows

    // APP ICONS AND LAUNCH IMAGES
        // App Icons Source   = Eliges la ubicación del icono de la app a mostrar en la galeria del celular
        // Launch Screen File = Eliges el storyboard del LaunchScreen

    // SUPPORTED INTENTS
        //

    // FRAMEWORKS , LIBRARIES AND EMBEDDED CONTENT
        // Código que nos ayuda de terceros, e inclusive nosotros mismos podemos crearlas

    // DEVELOPMENT ASSETS
        // Elementos que vamos a utilizar en nuestra aplicacion, imagens, archivos etc


// NAVIGATION AREA (LADO IZQUIERDO DONDE ESTAN TODOS LOS ARCHIVOS)
    // Primer elemento = Aparece el nombre del proyecto
    // App Delegate = Es un delegado de la aplicación donde contiene métodos que podemos hacerle overwrite o cambiar para que haga lo que nosotros queramos
    // SceneDelegate = tiene que ver con el ciclo de vida de la app (cuando esta queda en segundo plano)
    // ViewController = Sirve para controlar la vista (Un viewController por cada pantalla de la app) el que crea el proyecto está conectado con main.storyboard
    // main = pantalla principal de la aplicacion
    // assets = es un folder donde podemos tener las imagenes , carpetas con musica o archivos etc
    // launchscreen =  es la pantalla de inicio que es cuando inicia al abrir la app
    // info.plist = Elementos que caracterizan a la aplicacion (Se pueden cambiar, por ejemplo el nombre del main principal en caso de crear otro al borrarlo con nuevo nombre)

// PARA VER EL AREA DE DEBUG AREA ( TERMINAL Y DEMAS)
// view >> debug area >> show debug area
