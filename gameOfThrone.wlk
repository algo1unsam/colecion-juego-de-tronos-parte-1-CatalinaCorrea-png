object daenerys {
    const property artefactos = #{}
    var property fortaleza = []
    const property historial = []
    var property xp = 0
    var property ataque = 0
    var property defensa = 0


    method agarrar(artefacto) {
        if (artefactos.size() < 2) {
            artefactos.add(artefacto)
            self.sumarXp(artefacto)
            self.updateAtributes()
        }
        self.historial(artefacto)
    }

    method vaciarMochila() {
        artefactos.clear()
    }

    method llegarARocadragon() {
        fortaleza.addAll(artefactos)
        self.vaciarMochila()
        self.updateAtributes()

    }

    method historial(artefacto) {
      historial.add(artefacto)
    }

    method sumarXp(artefacto) {
      xp += artefacto.xp()
    }


    method updateAtributes() {
        if (artefactos.contains(espada)) {
            ataque = espada.ataque()
        } else {
            ataque = 0
        }
        if (artefactos.contains(armadura)) {
            defensa = armadura.defensa()
        } else {
            defensa = 0
        }
    }


}

object espada {
// Espada de Dragón
var property xp = 100
var property ataque = 100
  
}
object libro {
// Libro de Magia Ancestral
var property xp = 500
  
}
object collar {
// Collar de Fuego
var property xp = 150

}
object armadura {
// Armadura de Acero Valyrio
var property xp = 250
var property defensa = 100

  
}



