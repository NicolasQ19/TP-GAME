import wollok.game.*
import personaje.*
import configTeclado.*
import nivel1.*
import nivel2.*

object menu {

  method iniciar() {
    game.clear()
    configTeclado.configurarTeclas()
    game.addVisual(personaje)

    if(!game.hasVisual(pantallaMenu)) game.addVisual(pantallaMenu)


    keyboard.num1().onPressDo({ 
      if (game.hasVisual(pantallaMenu)){ 
        self.ocultarMenu()
        nivel1.iniciar()
        }
    })
    

    keyboard.num2().onPressDo({ 
            if (game.hasVisual(pantallaMenu)){ 
                self.ocultarMenu()
                nivel2.iniciar()
            }
        })
}


    method ocultarMenu() {
        if (game.hasVisual(pantallaMenu))
            game.removeVisual(pantallaMenu)
 	} 
}


object pantallaMenu {
    const property image = "play.jpg"
    const property position = game.at(5, 3) 
}