object daenerys {
    const property artefactos = #{}
    const property historial = []
    var property xp = 0


    method encontrar(artefacto) {
        if (artefactos.size() < 2) {
            artefactos.add(artefacto)
            self.sumarXp(artefacto)
        }
        self.historial(artefacto)
    }

    method vaciarMochila() {
        artefactos.clear()
    }

    method volverACasa() {
        castillo.guardarArtefactos()
        self.vaciarMochila()
    }

    method historial(artefacto) {
      historial.add(artefacto)
    }

    method sumarXp(artefacto) {
      xp += artefacto.xp()
    }


    method ataque() = artefactos.sum{ artefacto => artefacto.ataque() }
    method defensa() = artefactos.sum{ artefacto => artefacto.defensa() }

}

object castillo {
    var property fortaleza = []

    method guardarArtefactos() {
      fortaleza.addAll(daenerys.artefactos())
    }
}

object espada {
// Espada de Dragón
    var property xp = 100
    var property ataque = 100
    var property defensa = 0
  
}
object libro {
// Libro de Magia Ancestral
    var property xp = 500
    var property ataque = 0
    var property defensa = 0
  
}
object collar {
// Collar de Fuego
    var property xp = 150
    var property ataque = 0
    var property defensa = 0

}
object armadura {
// Armadura de Acero Valyrio
    var property xp = 250
    var property defensa = 100
    var property ataque = 0


  
}



