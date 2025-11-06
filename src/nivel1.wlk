import personaje.*
import elementoMovil.*
import menu.*
import configTeclado.* 
object nivel1 {
    
    method iniciar(){
        
        game.clear() // Limpia el menú antes de empezar
        
        // Añadimos esta línea:
        configTeclado.gameOn() // ¡IMPORTANTE! Activa el teclado del juego (W,A,S,D)
        
        game.addVisual(personaje)
        game.boardGround("pastoYCarretera.png")
        // Sacamos la línea personaje.movimientos()
        
        const auto1 = new Auto(position = game.at(0, 2), velocidad = 0.12, image = "Nivel1Celeste .png")
        const auto2 = new Auto(position = game.at(0, 6), velocidad = 0.15, image = "Nivel1Celeste .png")
        const auto3 = new Auto(position = game.at(0, 10), velocidad = 0.20, image = "Nivel1Celeste .png")

        game.addVisual(auto1)
        game.addVisual(auto2)
        game.addVisual(auto3)

        game.whenCollideDo(personaje, { elemento =>
            if (elemento.esPeligroso() && personaje.position().distance(elemento.position()) < 1.0 ) {
                game.say(personaje, "💥 ¡Me atropellaron!")
                game.stop()
            }
        })

        game.onTick(75, "mover autos", {
            auto1.mover()
            auto2.mover()
            auto3.mover()
        })
    }
}