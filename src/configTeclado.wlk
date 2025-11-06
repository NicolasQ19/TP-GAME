import personaje.*
import nivel1.*
import menu.*

object configTeclado {

  var teclado = tecladoMenu

  method iniciar() {
    keyboard.p().onPressDo({ teclado.p() })
    keyboard.w().onPressDo({ teclado.w() })
    keyboard.s().onPressDo({ teclado.s() })
    keyboard.a().onPressDo({ teclado.a() })
    keyboard.d().onPressDo({ teclado.d() })
    keyboard.n().onPressDo({ teclado.n() })
    keyboard.m().onPressDo({ teclado.m() })
  }

  method menuOn() { teclado = tecladoMenu }
  method gameOn() { teclado = tecladoJuego }
}

object tecladoMenu {
  method p() { nivel1.iniciar() }  // P → comenzar juego
  method w() {}
  method s() {}
  method a() {}
  method d() {}
  method n() {} //seleccionar nivel
  method m() {}
}

object tecladoJuego {
  method w() { personaje.moverArriba() }
  method s() { personaje.moverAbajo() }
  method a() { personaje.moverIzquierda() }
  method d() { personaje.moverDerecha() }
  method p() {}
  method n() {} 
  method m() {menu.iniciar()}
}
