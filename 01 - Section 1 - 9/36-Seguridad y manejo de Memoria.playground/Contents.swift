import UIKit

// SEGURIDAD Y MANEJO DE MEMORIA
/*
 Swift es muy segura ya que de forma predetermina evita que se produzcan errores extraños en nuestro código, siempre se asegura de que nuestras variables estén señalizadas o que las definamos como opcionales y una serie de mecanismos que se utilizan para evitar errores y evitar que lleguen a nosotros por lo que no nos debemos preocupar por ello
 
 3 PUNTOS A TENER EN CUENTA PARA QUE LA APLICACIÓN SEA OPTIMA Y SEGURA
 
 -1 Evitar accesos de escrituras simultaneos (ejemplo intentar cambiar el valor de una variable desde diferentes puntos) provoca que nuestra aplicación sea inconsistente lo cual nos hará encontrar con comportamientos raros a la hora de ejecutarla
 
 -2 Acessos concurrentes a la misma dirección de memoria (Por causa del ARC la dirección de memoria del objeto puede dejar de existir en algún momento), los accesos a un objeto deben estar muy bien controlados
 
 -3 Duración asincrona del acceso (No todos los procesos tienen que ser secuenciales) podemos lanzar un proceso que se ejecute en segundo plano y que tarde cierto tiempo en realizar una tarea (estas operaciones que son directas y existe un espacio de tiempo puede suponer un problema , ya que accesos espaciados entre tiempo pueden llegar acabar produciendo los errores que hablamos anteriormente, que accedan a una dirección de memoria que ya no existe o que varios procesos de escritura diferentes hagan que nuestra aplicación tenga un comportamiento inconsitente
 
 al tener en cuenta estos tres puntos estaremos para que nuestra aplicación sea mucho más segura
   
 
 */
