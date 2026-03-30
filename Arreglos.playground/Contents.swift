import Foundation


var paises = ["Argentina", "Bolivia", "Brazil", "Chile", "Colombia", "Ecuador", "Mexico", "Peru", "Paraguay", "Uruguay", "Venezuela"]
var gdp = [683.371, 57.086, 2256.910, 347.174, 438.121, 130.529, 1862.740, 318.480, 47.398, 84.986, 82.767]

// GDP de bolivia
if let pos = paises.firstIndex(of: "Bolivia") {
    print("GDP de Bolivia es: \(gdp[pos]) billones")
}

//GDP de Peru
if let pos = paises.firstIndex(of: "Peru") {
    print("GDP original de Peru: \(gdp[pos])")
    
    gdp[pos] = 320.0
    print("GDP de Peru actualizado es: \(gdp[pos])")
    
    gdp[pos] = 318.480
}


// Calcular promedio
let suma = gdp.reduce(0, +)
let promedio = suma / Double(gdp.count)
print("El promedio del GDP en la región es: \(promedio)")

//GDP más alto
if let mayor = gdp.max(), let posMayor = gdp.firstIndex(of: mayor) {
    print("El GDP más alto es de \(paises[posMayor]) con \(mayor) billones")
}

//GDP mayor a 300
var lista: [String] = []
for i in 0..<paises.count {
    if gdp[i] > 300 {
        lista.append(paises[i])
    }
}
print("Países con GDP mayor a 300 son: \(lista)")


//GDP mayor a menor
print("\n--- Ranking de Países por GDP ---")
let ordenados = zip(paises, gdp).sorted { $0.1 > $1.1 }

for (pais, valor) in ordenados {
    print("\(pais): \(valor) billones")
}
