import wollok.game.*

    object personaje {
        var property position = game.origin()
        const property image = "esqueleto.png"

        method movimientoA(unMovimiento){
            position = unMovimiento
        }
    }






