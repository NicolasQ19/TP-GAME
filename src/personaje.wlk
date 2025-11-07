import wollok.game.*

    object personaje {
        var property position = game.origin()
        const property image = "esqueleto.png"

        method movimientoA(nuevaPos){
            const x = nuevaPos.x()
            const y = nuevaPos.y()

            if (x >= 0 && x < game.width() && y >= 0 && y < game.height()) {
                position = nuevaPos
            }
    }

        method ultimaPosicion() = game.at(position,position)
    }

    object personajeMuerto {
        var property position = personaje.ultimaPosicion()
        const property image = "esqueleto.png"
    }






