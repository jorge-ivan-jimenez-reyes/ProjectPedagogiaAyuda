import Foundation

// Diccionarios organizados por categorías y subcategorías
let productos: [String: [String: [String: Double]]] = [
    "Vinos y Licores": [
        "Tequila": [
            "Don Julio": 995.00,
            "Mil Ochocientos": 899.00,
            "Jose Cuervo": 255.00,
            "Gran Centenario": 389.00,
            "Patrón": 1025.00,
            "Cabrito": 199.00,
            "Herradura": 985.00
        ],
        "Whisky": [
            "Johnnie Walker": 445.00,
            "Buchanan's": 1019.00,
            "Black & White": 283.00,
            "Ballentine's": 339.00,
            "Old Parr": 870.00
        ],
        "Cerveza": [
            "Corona Six Pack": 140.00,
            "Heineken Six Pack": 150.00,
            "Bohemia Six Pack": 123.00,
            "Modelo Six Pack": 145.00,
            "Victoria Six Pack": 130.00
        ]
    ],
    "Farmacia": [
        "Analgésicos": [
            "Aspirina": 54.00,
            "Paracetamol": 15.00,
            "Ibuprofeno": 30.00,
            "Tempra": 35.00,
            "Dolorac": 25.00
        ],
        "Antigripales": [
            "Next": 80.00,
            "Theraflu": 90.00,
            "Vick Jarabe": 65.00,
            "Sinutab": 78.00,
            "Antiflu-Des": 75.00
        ],
        "Vitaminas": [
            "Vitamina C 1000mg": 120.00,
            "Complejo B": 150.00,
            "Vitamina D 400 IU": 95.00,
            "Centrum 30 tabletas": 250.00,
            "Redoxon efervescente": 135.00
        ]
    ],
    "Frutas y Verduras": [
        "Frutas": [
            "Manzana Golden x kilo": 35.00,
            "Plátano Tabasco x kilo": 22.00,
            "Mango Ataulfo x kilo": 49.00,
            "Sandía x kilo": 15.00,
            "Papaya Maradol x kilo": 25.00,
            "Melón Cantaloupe x kilo": 30.00
        ],
        "Verduras": [
            "Tomate Saladette x kilo": 25.00,
            "Cebolla Blanca x kilo": 20.00,
            "Zanahoria x kilo": 18.00,
            "Aguacate Hass x kilo": 95.00,
            "Brócoli x pieza": 35.00,
            "Espinacas x paquete": 12.00
        ]
    ],
    "Carnes y Pescados": [
        "Carnes": [
            "Pechuga de Pollo x kilo": 95.00,
            "Carne Molida de Res x kilo": 110.00,
            "Costilla de Cerdo x kilo": 120.00,
            "Filete de Res x kilo": 250.00,
            "Chuleta Ahumada x kilo": 115.00
        ],
        "Pescados y Mariscos": [
            "Filete de Tilapia x kilo": 90.00,
            "Salmón x kilo": 320.00,
            "Camarón Grande x kilo": 450.00,
            "Pulpo x kilo": 380.00,
            "Mojarra Entera x kilo": 70.00
        ]
    ],
    "Abarrotes": [
        "Cereales": [
            "Corn Flakes 500g": 45.00,
            "Choco Krispis 500g": 52.00,
            "Zucaritas 600g": 55.00,
            "Special K 400g": 65.00,
            "All Bran 300g": 60.00
        ],
        "Aceites": [
            "Nutrioli 1 litro": 48.00,
            "Capullo 900ml": 55.00,
            "Crisol 1 litro": 42.00,
            "Mazola 1 litro": 50.00,
            "123 1 litro": 40.00
        ],
        "Snacks": [
            "Sabritas 240g": 35.00,
            "Doritos Nacho 200g": 30.00,
            "Ruffles Queso 230g": 33.00,
            "Takis Fuego 180g": 28.00,
            "Cacahuates Enchilados 200g": 40.00
        ],
        "Pastas y Salsas": [
            "Pasta Barilla Spaghetti 500g": 25.00,
            "Pasta Great Value 400g": 18.00,
            "Salsa Ragú Tradicional 650g": 60.00,
            "Salsa Prego Champiñones 650g": 65.00,
            "Salsa Casera Herdez 370g": 28.00
        ]
    ],
    "Lácteos y Embutidos": [
        "Lácteos": [
            "Leche Alpura 1 litro": 25.00,
            "Yogurt Danone 1 litro": 35.00,
            "Queso Panela x kilo": 90.00,
            "Queso Manchego x kilo": 110.00,
            "Crema Alpura 1 litro": 50.00
        ],
        "Embutidos": [
            "Jamón de Pavo x kilo": 85.00,
            "Salchicha Vienna x kilo": 60.00,
            "Chorizo Argentino x kilo": 95.00,
            "Tocino x kilo": 120.00,
            "Mortadela x kilo": 70.00
        ]
    ]
]


print("¡Bienvenid@ a la aplicación Fresh&Go!🥦")
print("---------------------------------------")
print("\nFavor de introducir su nombre completo")
let nombre = readLine()!
print("\nHola \(nombre), ¿cómo te gusta que te digan?")
let apodo = readLine()!
print("\n¡Bienvenid@ \(apodo)!🤗")

var continuar = true
var carrito: [(producto: String, precio: Double, cantidad: Int)] = [] // Carrito de compras

while continuar {
    print("\nSeleccione una opción:")
    print("1 = Comprar productos")
    print("2 = Ver carrito de compras")
    print("0 = Salir")
    
    if let input = readLine(), let opcion = Int(input) {
        switch opcion {
        case 0:
            continuar = false
            print("\nGracias por usar Fresh&Go. ¡Hasta pronto!")
            
        case 1:
            // Menú de compra
            print("\nSeleccione la categoría de compra:")
            let categorias = Array(productos.keys)
            for (index, categoria) in categorias.enumerated() {
                print("\(index + 1) = \(categoria)")
            }
            if let input = readLine(), let seleccionCategoria = Int(input), seleccionCategoria > 0, seleccionCategoria <= categorias.count {
                let categoriaElegida = categorias[seleccionCategoria - 1]
                print("\nHas seleccionado: \(categoriaElegida)")
                
                // Subcategorías
                let subcategorias = Array(productos[categoriaElegida]!.keys)
                print("\nSeleccione una subcategoría:")
                for (index, subcategoria) in subcategorias.enumerated() {
                    print("\(index + 1) = \(subcategoria)")
                }
                if let input = readLine(), let seleccionSubcategoria = Int(input), seleccionSubcategoria > 0, seleccionSubcategoria <= subcategorias.count {
                    let subcategoriaElegida = subcategorias[seleccionSubcategoria - 1]
                    print("\nHas seleccionado: \(subcategoriaElegida)")
                    
                    // Productos
                    let productosEnSubcategoria = productos[categoriaElegida]![subcategoriaElegida]!
                    print("\nProductos disponibles:")
                    let productosList = Array(productosEnSubcategoria.keys)
                    for (index, producto) in productosList.enumerated() {
                        print("\(index + 1) = \(producto): $\(productosEnSubcategoria[producto]!)")
                    }
                    print("\nSeleccione un producto para añadir al carrito (o ingrese 0 para regresar):")
                    if let input = readLine(), let seleccionProducto = Int(input), seleccionProducto > 0, seleccionProducto <= productosList.count {
                        let productoElegido = productosList[seleccionProducto - 1]
                        let precio = productosEnSubcategoria[productoElegido]!
                        
                        print("¿Cuántos \(productoElegido) desea añadir?")
                        if let cantidadInput = readLine(), let cantidad = Int(cantidadInput), cantidad > 0 {
                            carrito.append((producto: productoElegido, precio: precio, cantidad: cantidad))
                            print("\n\(cantidad) \(productoElegido) han sido añadidos al carrito por $\(precio * Double(cantidad)).")
                        } else {
                            print("Cantidad inválida.")
                        }
                    } else {
                        print("Opción inválida.")
                    }
                } else {
                    print("Opción inválida.")
                }
            } else {
                print("Opción inválida.")
            }
            
        case 2:
            // Ver carrito
            if carrito.isEmpty {
                print("\nTu carrito está vacío.")
            } else {
                print("\nCarrito de compras:")
                var total = 0.0
                for (index, item) in carrito.enumerated() {
                    let subtotal = item.precio * Double(item.cantidad)
                    print("\(index + 1) = \(item.cantidad) x \(item.producto): $\(subtotal)")
                    total += subtotal
                }
                print("\nTotal a pagar: $\(total)")
                
                // Opciones de pago
                print("\nSeleccione una opción de pago:")
                print("1 = Efectivo")
                print("2 = Pickup")
                print("3 = Envío a domicilio")
                
                if let pagoInput = readLine(), let metodoPago = Int(pagoInput) {
                    switch metodoPago {
                    case 1:
                        print("\nHa seleccionado pago en efectivo. Por favor, pague al recibir.")
                    case 2:
                        print("\nHa seleccionado recoger en tienda. Su pedido estará listo pronto.")
                    case 3:
                        print("\nHa seleccionado envío a domicilio. Su pedido será enviado a su dirección registrada.")
                    default:
                        print("Opción de pago inválida.")
                    }
                } else {
                    print("Opción inválida.")
                }
            }
        default:
            print("Opción inválida.")
        }
    } else {
        print("Opción inválida.")
    }
}
