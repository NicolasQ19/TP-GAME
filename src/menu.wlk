import wollok.game.*
import personaje.*
import configTeclado.*
import niveles.*

object menu {
    const nivel1 = new Nivel1()
    const nivel2 = new Nivel2()

    
    method iniciar() {
    if(!game.hasVisual(pantallaMenu)) game.addVisual(pantallaMenu)

    //TECLA INICIAR NIVEL 1
    keyboard.num1().onPressDo({ 
      if (game.hasVisual(pantallaMenu)){ 
        self.ocultarMenu()
        nivel1.iniciar()
        }
    })
    
    //TECLA INICIAR NIVEL 2
    keyboard.num2().onPressDo({ 
            if (game.hasVisual(pantallaMenu)){ 
                self.ocultarMenu()
                nivel2.iniciar()
            }
        })

    keyboard.c().onPressDo({ 
            if (game.hasVisual(pantallaMenu)){ // Se asegura que estemos en el menú
                self.ocultarMenu()
                controles.iniciar()
            }
        })
}


    method ocultarMenu() {
        if (game.hasVisual(pantallaMenu))
        game.removeVisual(pantallaMenu)
 	} 
}

object pantallaMenu {
    const property image = "menugrande_1.png"
    const property position = game.origin()
}

// MENÚ CONTROLES
object controles {
    // INICIALIZAR MENÚ CONTROLES
    method iniciar() {

        game.addVisual(pantallaControles)

        // TECLA VOLVER AL MENÚ PRINCIPAL
        keyboard.m().onPressDo({ 
            if (game.hasVisual(pantallaControles)){
                game.removeVisual(pantallaControles)
                menu.iniciar()
            }
        })
    }
}

// VISUAL DE CONTROLES
object pantallaControles {
    const property image = "controles.png"
    const property position = game.at(0, 0) 
}

object volverAlMenu {
    method volverAlMenuDesdePantallaFinal(visual) {
        keyboard.m().onPressDo({
            if (game.hasVisual(visual)){
                game.removeVisual(visual)
                //
                game.clear()
                menu.iniciar()
            }
        })
    }
}

// PANTALLA VICTORIA
object victoria {
    method iniciar() {
        if (!game.hasVisual(pantallaVictoria)) game.addVisual(pantallaVictoria)
        volverAlMenu.volverAlMenuDesdePantallaFinal(pantallaVictoria)
    }
}

object pantallaVictoria {
    method image() = "ganaste.png"
    method position() = game.at(5, 5)
}


// PANTALLA DERROTA
object derrota {
    method iniciar() {
        if (!game.hasVisual(pantallaDerrota)) {game.addVisual(pantallaDerrota)}

        volverAlMenu.volverAlMenuDesdePantallaFinal(pantallaDerrota)
    }
}

// VISUAL DE DERROTA
object pantallaDerrota {
    // reiniciar, volver al menu, salir del juego
    method image() = "perdiste.png"
    method position() = game.at(5, 5)

}