import wollok.game.*

    object personaje {
        var property position = game.origin()
        const property image = "esqueleto.png"

        method movimientoA(unMovimiento){
            position = unMovimiento
        }

        method ultimaPosicion() = game.at(position,position)
    }

    object personajeMuerto {
        var property position = personaje.ultimaPosicion()
        const property image = "esqueleto.png"
    }






