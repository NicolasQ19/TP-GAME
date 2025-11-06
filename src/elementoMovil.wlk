import wollok.game.*

class ElementoMovil {
  var property position
  const property velocidad
  const property image

  // Movimiento básico hacia la derecha
  method mover() {
    position = position.right(velocidad)

    // Si sale del mapa → vuelve al borde izquierdo
    if (position.x() > game.width()) {
      position = game.at(0, position.y())
    }
  }

  // Por defecto, no es peligroso
  method esPeligroso() = false
}


class Auto inherits ElementoMovil {
  override method esPeligroso() = true
}



