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

        //Posicionamiento de los enemigos y velocidad
        const enemy1 = new Enemy(position = game.at(0, 2), velocidad = 0.11, image = "vinicius.png")//ok
        const enemy2 = new Enemy(position = game.at(17, 4), velocidad = 0.13, image = "mbappe.png")//ok
        const enemy3 = new Enemy(position = game.at(0, 6), velocidad = 0.20, image = "neymar.png")//ok
        const enemy4 = new Enemy(position = game.at(17, 8), velocidad = 0.15, image = "cristiano.png")//ok
        const enemy5 = new Enemy(position = game.at(0, 10), velocidad = 0.20, image = "vinicius.png")//ok seria el portero

        //aparicion visual en la cacha
        game.addVisual(enemy1)
        game.addVisual(enemy2)
        game.addVisual(enemy3)
        game.addVisual(enemy4)
        game.addVisual(enemy5)

        game.whenCollideDo(personaje, { elemento =>
            if (elemento.esPeligroso() && personaje.position().distance(elemento.position()) < 1.0 ) {
                //game.say(personaje, "💥 ¡Me cortaron la pierna!")
                derrota.iniciar()
                game.removeVisual(personaje)
                personaje.position(game.at(8, 0))
            }
        })

        game.onTick(75, "mover enemigos", {
            enemy1.mover1()
            enemy2.mover2()
            enemy3.mover1()
            enemy4.mover2()
            enemy5.mover1()

            // ✅ Chequeo de victoria dentro del onTick
            if (personaje.position().y() >= game.height() - 1) {
                //game.say(personaje, "✅ ¡Llegaste a la meta!")
                victoria.iniciar()
                game.removeVisual(personaje)
                personaje.position(game.at(8, 0))
            }
        })

        game.whenCollideDo(personaje,{elemento => 
            if(elemento.esBandera()){
                //game.say(personaje,"GANE")
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
        

        const enemy1 = new Enemy(position = game.at(0, 1), velocidad = 0.11, image = "Nivel1Rojo.png")
        const enemy2 = new Enemy(position = game.at(0, 3), velocidad = 0.13, image = "Nivel1Rojo.png")
        const enemy3 = new Enemy(position = game.at(0, 5), velocidad = 0.20, image = "Nivel1Celeste .png")

        game.addVisual(enemy1)
        game.addVisual(enemy2)
        game.addVisual(enemy3)

        game.whenCollideDo(personaje, { elemento =>
            if (elemento.esPeligroso() && personaje.position().distance(elemento.position()) < 1.0 ) {
                game.say(personaje, "💥 ¡Me atropellaron!")
                derrota.iniciar()
                game.removeVisual(personaje)
                personaje.position(game.origin()) 

            }
        })

        game.onTick(75, "mover autos", {
            enemy1.mover()
            enemy2.mover()
            enemy3.mover()

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