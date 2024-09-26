import UIKit

// CONSTRAINT

// Leading  = Left
// Trailing = Right

// AUTO LAYOUT
// La forma de acomodar los elementos de la interfaz de usuario se acomodan de forma automatica
/* Directorio
    - View (Super vista)
        - Safe area (Vista en la cual se tiene en cuenta el notch y el boton inferior) estamos a salvo
        // A partir del iPhone 8 se introdujo el notch
        - Etiqueta label button etc

*/
// AUTO LAYOUT PASO A PASO (Label centrado y botón debajo a una distancia x)
// - Colocamos el Label en el centro
// - Colocamos el boton abajo del label a cierta distancia x
// - Seleccionamos boton y en el menu de constraint
// - Definimos el top (en función al vecino mas cercano en este caso la etiqueta label)
// - Seleccionamos la raya roja y add 1 constraint
// - Realizamos lo mismo con las contrains Leading Trailing del botón
// - Procedemos a colocar constraints a la etiqueta label top / leading / trailing el bottom no ya que anteriormente se colocó una del botón hacia esta etiqueta (top)
// Al hacer esto y cambiar de dispositivos veremos que no queda cerntrado como queriamos por lo que debemos utilizar otro tipo de constraint

// Procedemos a borrar todas las constraints
// - Seleccionamos la etiqueta label , mantenemos apretado CTRL + click derecho (aparecerá una linea azul)
// - Colocamos la flecha en uno de los costados de la view blanca principal
// - Nos aparecerán la siguientes opciones:

//    - TRAILING SPACE TO SAFE AREA
//      Esta opción agrega espacio entre el borde derecho del elemento y el borde derecho del área segura. El área segura es la zona de la pantalla que no está obstruida por elementos como la barra de estado o la barra de navegación. Al usar esta opción, te aseguras de que tu elemento no se superponga a estos elementos.

//    - LEADING SPACE TO SAFE AREA
//     Similar a la opción anterior, pero agrega espacio entre el borde izquierdo del elemento y el borde izquierdo del área segura.

//    - CENTER HORIZONTALLY IN SAFE AREA
//       - Esta opción centra el elemento horizontalmente dentro del área segura. Imagina una línea vertical que divide la pantalla en dos mitades. Al seleccionar esta opción, tu elemento se ubicará exactamente en el centro de esa línea.

//    - CENTER VERTICALY IN SAFE AREA
//    Similar a la opción anterior, pero centra el elemento verticalmente dentro del área segura. Imagina una línea horizontal que divide la pantalla en dos mitades. Al seleccionar esta opción, tu elemento se ubicará exactamente en el centro de esa línea.


//    - EQUAL WIDTHS
//      Esta opción hace que los elementos seleccionados tengan el mismo ancho. Es útil para crear diseños con columnas uniformes.

//    - EQUAL HEIGHTS
//      Similar a la opción anterior, pero hace que los elementos seleccionados tengan la misma altura. Es útil para crear diseños con filas uniformes.

//    - ASPECT RATIO
//      Esta opción mantiene la relación de aspecto de los elementos seleccionados. Esto significa que si cambias el ancho de un elemento, su altura se ajustará automáticamente para mantener la proporción. Es útil para imágenes o elementos que deben mantener su forma original.

/* TIPS
- Las sugerencias de las constraints que da xcode por lo general suelen fallar
 - Caso que una vista se pierda fuera del dispositivo debemos (Sucede cuando cambiamos entre dispositivo y dispositivo)
    - Seleccionar el elemento en el arbol gerarquico y en el lado derecho de opciones movemos el eje x e y hasta que la vista quede dentro del dispositivo
    - Y ya podemos moverla libremente

*/

/* AUTOLAYOUT AUTOMATICO
 - Seleccionamos el label y boton
 - Vamos al icono al lado de las constraint (que parece un triangulo) "Resolve Auto Layout Issues"
 - Nos da dos opciones :
    Selected views (Vistas seleccionadas)
    All views in View Controller (Todas las vistas del View Controller)
 
        - Add Missing Constrains
             Función: Analiza los elementos seleccionados y agrega las restricciones automáticas necesarias para definir su posición y tamaño de manera consistente en diferentes dispositivos.
             Uso: Útil cuando has colocado elementos manualmente y deseas que Xcode genere automáticamente las restricciones para mantener su posición relativa.
 
        - Reset to suggested Constraints
            Función: Elimina todas las restricciones existentes en los elementos seleccionados y luego vuelve a agregar las restricciones sugeridas por Xcode. (No recomendado) el 90 % de las veces se equivoca y hay que setear de forma manual
            Uso: Puede ser útil cuando has modificado las restricciones manualmente y deseas volver al estado inicial sugerido por Xcode.
 
        - Clear Constraints
             Función: Elimina todas las restricciones automáticas de los elementos seleccionados.
             Uso: Útil cuando deseas comenzar desde cero con las restricciones o si estás experimentando problemas con las restricciones existentes.
 
*/
