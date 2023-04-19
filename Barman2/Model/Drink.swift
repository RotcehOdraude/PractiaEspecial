// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let bebida = try? JSONDecoder().decode(Bebida.self, from: jsonData)

import Foundation

// MARK: - DrinkElement
struct DrinkElement: Codable {
    let directions, ingredients, name, img: String
}

typealias Drink = DrinkElement
