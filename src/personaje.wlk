import wollok.game.*

object personaje {
    var property position = game.origin()
    const property image = "esqueleto.png"

    method moverArriba() {
        const nuevaPosicion = position.up(1)
        position = nuevaPosicion
    }
    method moverAbajo() { 
        const nuevaPosicion = position.down(1)
        position = nuevaPosicion
    }
    method moverIzquierda() { 
        const nuevaPosicion = position.left(1)
        position = nuevaPosicion
    }
    method moverDerecha() { 
        const nuevaPosicion = position.right(1)
        position = nuevaPosicion
    }

    // El método movimientos() se ha eliminado.
}






