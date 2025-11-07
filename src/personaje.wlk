import wollok.game.*

    object personaje {
        var property position = game.origin()
        var property image = "messifrente.png"

        method movimientoA(nuevaPos){
            const x = nuevaPos.x()
            const y = nuevaPos.y()

            if (x >= 0 && x < game.width() && y >= 0 && y < game.height()) {
                position = nuevaPos
            }
    }

    method cambiarImagenAFrente(){
        image = "messifrente.png"
    }

    method cambiarImagenAEspalda(){
        image = "messiespalda.png"
    }

    method cambiarImagenAIzquierda(){
        image = "messiizquierdo.png"
    }

    method cambiarImagenADerecha(){
        image= "messiderecho.png"
    }

    }







