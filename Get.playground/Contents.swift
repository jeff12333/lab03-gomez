let reinados: [String: Int] = [
    "Manco Capac": 30,
    "Sinchi Roca": 20,
    "Lloque Yupanqui": 25,
    "Mayta Capac": 15,
    "Capac Yupanqui": 18,
    "Inca Roca": 22,
    "Yahuar Huacac": 12,
    "Huiracocha": 17,
    "Pachacutec Inca Yupanqui": 40,
    "Amaru Inca Yupanqui": 10,
    "Tupac Inca Yupanqui": 35,
    "Huayna Capac": 45,
    "Huascar": 5,
    "Atahualpa": 6
]

let incas = Set(reinados.keys)

// 1. Verificar si un inca está registrado
let buscar = "Atahualpa"

if incas.contains(buscar) {
    print("El inca \(buscar) SI está en la cronología")
} else {
    print("El inca \(buscar) NO está en la cronología")
}


// 2. Unir nombres sin duplicados
var palabrasUsadas: Set<String> = []
var resultado: [String] = []

for inca in incas {
    
    let partes = inca.split(separator: " ")
    var seRepite = false
    
    for parte in partes {
        let palabra = String(parte)
        
        if palabrasUsadas.contains(palabra) {
            seRepite = true
        }
    }
    
    if seRepite == false {
        resultado.append(inca)
        
        for parte in partes {
            palabrasUsadas.insert(String(parte))
        }
    }
}

print("\nIncas sin repetir palabras:")
print(resultado)

// 3. Incas cuyo nombre contiene YUPANQUI
var listaYupanqui: [String] = []

for inca in incas {
    if inca.uppercased().contains("YUPANQUI") {
        listaYupanqui.append(inca)
    }
}

print("\nIncas con YUPANQUI:")
print(listaYupanqui)
