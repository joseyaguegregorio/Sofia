

import SwiftUI

struct ColorInfo: Identifiable {
    let id: Int
    let displayName: String
    let color: Color
}

class ColorsProvider {
    
    static func supportedColors() -> [ColorInfo] {
        return [ColorInfo(id: 1, displayName: "negro", color: Color.black),
               ColorInfo(id: 2, displayName: "azul", color: Color.blue),
               ColorInfo(id: 3, displayName: "rojo", color: Color.red),
               ColorInfo(id: 4, displayName: "verde", color: Color.green),
               ColorInfo(id: 5, displayName: "amarillo", color: Color.yellow),
               ColorInfo(id: 6, displayName: "naranja", color: Color.orange),
               ColorInfo(id: 7, displayName: "gris", color: Color.gray),
               ColorInfo(id: 8, displayName: "morado", color: Color.purple),
               ColorInfo(id: 9, displayName: "rosa", color: Color.pink)]
    }
    
}
