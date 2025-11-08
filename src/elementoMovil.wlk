import wollok.game.*

class ElementoMovil {
  var property position
  const property velocidad
  const property image

  // Movimiento básico hacia la derecha
  method mover1() {
    position = position.right(velocidad)
    // Si sale del mapa → vuelve al borde izquierdo
    if (position.x() > game.width()) {
      position = game.at(0, position.y())
    }
  }

  // Movimiento básico hacia la izquierda
  method mover2() {
    position = position.left(velocidad)
    //Si sale del mapa por la izquierda → vuelve al borde derecho
    if (position.x() < 0) {
      position = game.at(game.width(), position.y())
    }
  }

  // Por defecto, no es peligroso
  method esPeligroso() = false
}

class Enemy inherits ElementoMovil {
  override method esPeligroso() = true
}



