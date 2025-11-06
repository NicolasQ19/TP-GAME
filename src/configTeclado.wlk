import personaje.*
import nivel1.*
import menu.*

object configTeclado {

  method configurarTeclas() {
    	keyboard.w().onPressDo( {personaje.movimientoA((personaje.position().up(1)))})
      keyboard.s().onPressDo( {personaje.movimientoA((personaje.position().down(1)))})
      keyboard.a().onPressDo( {personaje.movimientoA((personaje.position().left(1)))})
      keyboard.d().onPressDo( {personaje.movimientoA((personaje.position().right(1)))})
      keyboard.p().onPressDo( { nivel1.iniciar()})
  }
}