import personaje.*
import menu.*

object configTeclado {
  method configurarTeclas() {
    keyboard.w().onPressDo( {personaje.movimientoA((personaje.position().up(1)))personaje.cambiarImagenAEspalda()})
    keyboard.s().onPressDo( {personaje.movimientoA((personaje.position().down(1)))personaje.cambiarImagenAFrente()})
    keyboard.a().onPressDo( {personaje.movimientoA((personaje.position().left(1)))personaje.cambiarImagenAIzquierda()})
    keyboard.d().onPressDo( {personaje.movimientoA((personaje.position().right(1)))personaje.cambiarImagenADerecha()})
  }
}