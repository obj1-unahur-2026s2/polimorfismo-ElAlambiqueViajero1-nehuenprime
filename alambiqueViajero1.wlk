object luke {
    var vehiculo = alambiqueVeloz
    var lugaresVisitados = 0
    var recuerdoActual = null

    method viajar(ciudad) {
        if (ciudad.puedeSerVisitadaCon(vehiculo)) {
            lugaresVisitados += 1
            recuerdoActual = ciudad.recuerdo()
            vehiculo.viajar()
        }
    }

    method cambiarDeVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    method cantidadDeLugaresVisitados() = lugaresVisitados

    method recuerdo() = recuerdoActual
}

object alambiqueVeloz {
    var combustibleActual = 50

    method combustible() = combustibleActual

    method esRapido() = true

    method viajar() {
        combustibleActual -= 10
    }

    method recargar() {
        combustibleActual = 50
    }
}


object superChatarraEspecial {
    var canionesPuestos = false

    method combustible() {
        return if (canionesPuestos) 50 else 80
    }

    method esRapido() = false

    method viajar() {
        canionesPuestos = !canionesPuestos
    }

    method tieneCaniones() = canionesPuestos
}


object antiguallaBlindada {
    var cantidadGangsters = 5

    method combustible() = 50

    method esRapido() = cantidadGangsters < 7

    method viajar() = self

    method cambiarCantidadDeGangsters(nuevaCantidad) {
        if (nuevaCantidad >= 1) {
            cantidadGangsters = nuevaCantidad
        }
    }

    method cantidadDeGangsters() = cantidadGangsters
}


object motoCohete {
    var combustibleActual = 30

    method combustible() = combustibleActual

    method esRapido() = true

    method viajar() {
        combustibleActual -= 5
    }

    method recargar() {
        combustibleActual = 30
    }
}


object taxiLunar {
    var combustibleActual = 60
    var turboActivado = false

    method combustible() = combustibleActual

    method esRapido() = turboActivado

    method viajar() {
        combustibleActual -= 5
        turboActivado = !turboActivado
    }

    method recargar() {
        combustibleActual = 60
    }
}


object paris {

    method recuerdo() = "llavero torre eiffel"

    method puedeSerVisitadaCon(vehiculo) {
        return vehiculo.combustible() >= 10
    }
}


object buenosAires {
    var presidenteBueno = true

    method recuerdo() {
        return if (presidenteBueno)
            "mate con yerba"
        else
            "mate sin yerba"
    }

    method puedeSerVisitadaCon(vehiculo) {
        return vehiculo.esRapido()
    }

    method puebloEligePresidenteBueno() {
        presidenteBueno = true
    }

    method puebloEligePresidenteMalo() {
        presidenteBueno = false
    }
}


object bagdad {
    var recuerdoActual = "bidon de crudo"

    method recuerdo() = recuerdoActual

    method cambiarRecuerdo(nuevoRecuerdo) {
        recuerdoActual = nuevoRecuerdo
    }

    method puedeSerVisitadaCon(vehiculo) = true
}


object lasVegas {
    var ciudadHomenajeada = paris

    method recuerdo() {
        return ciudadHomenajeada.recuerdo()
    }

    method puedeSerVisitadaCon(vehiculo) {
        return ciudadHomenajeada.puedeSerVisitadaCon(vehiculo)
    }

    method cambiarCiudadHomenajeada(nuevaCiudad) {
        ciudadHomenajeada = nuevaCiudad
    }
}


object tokio {

    method recuerdo() = "figura de godzilla"

    method puedeSerVisitadaCon(vehiculo) {
        return vehiculo.esRapido() && vehiculo.combustible() >= 20
    }
}

