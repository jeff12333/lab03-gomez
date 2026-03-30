import Foundation


let redMetro: [String: [String]] = [
    "Linea 1": ["Villa El Salvador", "Angamos", "Gamarra", "Bayovar"],
    "Linea 2": ["Callao", "San Marcos", "Mercado Santa Anita", "Ate"],
    "Linea 3": ["El Alamo", "Central", "Pedro Miotta"],
    "Linea 4": ["Gambeta", "Aeropuerto", "Mercado Santa Anita"]
]

//Consultar de una línea
let lineaAConsultar = "Linea 2"
print("Estaciones de \(lineaAConsultar): \(redMetro[lineaAConsultar] ?? [])")

//línea está una estación
let estacionBuscada = "Mercado Santa Anita"
print("La estación \(estacionBuscada) está en:")
for (nombreLinea, estaciones) in redMetro {
    if estaciones.contains(estacionBuscada) {
        print("- \(nombreLinea)")
    }
}

// 3. Verificar si una estación pertenece a una línea específica
let pertenece = redMetro["Linea 4"]?.contains("Aeropuerto") ?? false
print("¿Aeropuerto está en la Línea 4?: \(pertenece)")

// 4. Contar estaciones por línea
if let estaciones = redMetro["Linea 2"] {
    print("La Línea 2 tiene \(estaciones.count) estaciones.")
}
