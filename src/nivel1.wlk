import personaje.*
import elementoMovil.*
import menu.*
import configTeclado.* 
object nivel1 {
    
    method iniciar(){
        game.clear()
        configTeclado.configurarTeclas() 
        game.addVisual(personaje)
        
        game.boardGround("carreteraPasto.png")
        
        const auto1 = new Auto(position = game.at(0, 1), velocidad = 0.11, image = "Nivel1Rojo.png")
        const auto2 = new Auto(position = game.at(0, 5), velocidad = 0.13, image = "Nivel1Rojo.png")
        const auto3 = new Auto(position = game.at(0, 9), velocidad = 0.20, image = "Nivel1Celeste .png")

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