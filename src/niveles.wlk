import personaje.*
import elementoMovil.*
import menu.*
import configTeclado.* 
import banderaGanar.*


class Nivel{

    method iniciar()
}
class Nivel1 inherits Nivel {
    
    override method iniciar(){
        game.clear()
        configTeclado.configurarTeclas() 
        game.addVisual(personaje)
        game.addVisual(bandera)

        const auto1 = new Auto(position = game.at(0, 2), velocidad = 0.11, image = "vinicius.png")
        const auto2 = new Auto(position = game.at(8, 6), velocidad = 0.13, image = "neymar.png")
        const auto3 = new Auto(position = game.at(3, 8), velocidad = 0.20, image = "mbappe.png")
        const auto4 = new Auto(position = game.at(4, 4), velocidad = 0.15, image = "cristiano.png")
        const auto5 = new Auto(position = game.at(0, 10), velocidad = 0.20, image = "mbappe.png")
        game.addVisual(auto1)
        game.addVisual(auto2)
        game.addVisual(auto3)
        game.addVisual(auto4)


        game.whenCollideDo(personaje, { elemento =>
            if (elemento.esPeligroso() && personaje.position().distance(elemento.position()) < 1.0 ) {
                game.say(personaje, "💥 ¡Me atropellaron!")
                derrota.iniciar()
                game.removeVisual(personaje)
                personaje.position(game.origin()) 
            }
        })

        game.onTick(75, "mover autos", {
            auto1.mover()
            auto2.mover()
            auto3.mover()
            auto4.mover()
        })

        game.whenCollideDo(personaje,{elemento => 
        if(elemento.esBandera()){
            game.say(personaje,"GANE")
            victoria.iniciar()
            game.removeVisual(personaje)
            personaje.position(game.origin()) 
        }
        })
    }
}   

class Nivel2 inherits Nivel {
    
    override method iniciar(){
        game.clear()
        configTeclado.configurarTeclas() 
        game.addVisual(personaje)
        game.addVisual(bandera) 
        

        
        const auto1 = new Auto(position = game.at(0, 1), velocidad = 0.11, image = "Nivel1Rojo.png")
        const auto2 = new Auto(position = game.at(0, 3), velocidad = 0.13, image = "Nivel1Rojo.png")
        const auto3 = new Auto(position = game.at(0, 5), velocidad = 0.20, image = "Nivel1Celeste .png")



        game.addVisual(auto1)
        game.addVisual(auto2)
        game.addVisual(auto3)


        game.whenCollideDo(personaje, { elemento =>
            if (elemento.esPeligroso() && personaje.position().distance(elemento.position()) < 1.0 ) {
                game.say(personaje, "💥 ¡Me atropellaron!")
                derrota.iniciar()
                game.removeVisual(personaje)
                personaje.position(game.origin()) 

            }
        })

        game.onTick(75, "mover autos", {
            auto1.mover()
            auto2.mover()
            auto3.mover()

        })

        game.whenCollideDo(personaje,{elemento => 
        if(elemento.esBandera()){
            game.say(personaje,"GANE")
            victoria.iniciar()
            game.removeVisual(personaje)
            personaje.position(game.origin()) 
        }
        })
    }


    method ocultarNivel2(){
        if (game.hasVisual(self))
            game.removeVisual(self)
        }
}   

class Nivel3 inherits Nivel{
    ///
}