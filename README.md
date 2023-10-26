# Evidencia: Desarrollo de videojuego en xCode
### Semana Tec - Herramientas computacionales: el arte de la programación.
***
- Adrián Moras Acuña // A01552359
- Angel Estrada Centeno // A01732584
- Fernando Estrada Silva // A01736094

Liga del video demostrativo: https://youtube.com/shorts/bNzIzynxBJI?feature=share

  
A continuación se muestra la elaboración de un videojuego utilizando swift con xCode como evidencia de la Semana Tec Herramientas de la Herramientas computacionales: el arte de la programación. 
Se trata de un juego de memoria que consiste en adivinar la posición de 6 pares de imagenes iguales para ganar. Se selecciona una imagen inicialmente y el ususario debe encontrar el par para el resto. 

El juego cuenta con una sola función principal la cual se encarga de verificar cuando se enecuentra el par de imagenes. La mecánica general consiste en crear un arreglo donde se almacena aleatoriamente una imagen, donde simultáneamente hay un contador que debe alcanzar a 2 para vzalidar que la imagen es la msima. Una vez que se encuentra el par, el contador se reinicia para continuar con el juego. En caso de que sea una imagen diferente (el contador se mantenga en 1), los botones de todas las imagenes de nuelven a habilitar, y se elimina la imagen del botón con el fin de hacer el efecto de "voltear" la imagen. Nuevamente se reincia tanto el contador como el arreglo aleatorio. 

Del otro lado, un contador más se encarga de validar el número de pares restantes por encontrar, en cuanto este sea 0, el juego termina. 





