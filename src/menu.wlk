import wollok.game.*
import personaje.*
import configTeclado.*   // si tu nivel se llama distinto, ajustalo

object menu {

  method iniciar() {
    game.clear()
    
    // Mostrar título
    new OnlyVisual(image = "play.png", position = game.at(5,5)).iniciar()
    
    // Activar modo menú en el teclado
    configTeclado.menuOn()
  }
}

class OnlyVisual {
    var property image
    const property position

    method iniciar() {
        game.addVisual(self)
    }
}
