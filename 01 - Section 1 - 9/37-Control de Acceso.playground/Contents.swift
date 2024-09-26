import UIKit

// CONTROL DE ACCESO DESDE CERO

// Nos sirve para restringir el acceso a diferentes partes de nuestro código, a nivel de archivo o nivel de módulo donde se está ejecutando, esta caracteristica nos sirve para ocultar detalles de la implementación o caracteristicas , detalles que no todo el código de una app es necesario que conozca, nos ayuda a controlar la estabilidad de nuestra app

/*NIVELES DE ACCESO
  Estas permiten acceder al objeto desde cualquier parte de nuestro código, de nuestro módulo, de nuestra app como por fuera de ella
 . OPEN (Es el menos restrictivo)
 . PUBLIC
 Debine que se puede acceder a ese objeto dentro de nuestro módulo (Dentro de la app que estamos construyendo)
 . INTERNAL
 Define que solo se podrá acceder a ese objeto siempre y cuando esté dentro de nuestro fichero
 . FILEPRIVATE
 Restringe el uso del objeto unicamente al contexto en el que está definido bloque de código entre llaves {}
 . PRIVATE (Es el más restrictivo)
 
 Un control de acceso puede ser aplicado en:
 class , struct , enum , var , let , func , casi en todos los tipos de objetos disponibles en Swift
 
 Se coloca el nivel de acceso antes del nombre del objeto
 ejemplo:
 
 public class
 private var
 etc
 
 
 
 // Por defecto swift crea los objetos con nivel INTERNAL lo cual hace que los podamos usar dentro de cualquier parte de nuestra app
 */
