//
//  House.swift
//  Westeros2
//
//  Created by ibautista on 3/9/23.
//

import Foundation
import UIKit

final class House {
    final class Sigil {  // Sigil combinación de la imagen y del nombre
        let image: UIImage?
        let words: String
        
        init(image: UIImage? = nil, words: String)
        {
            self.image = image
            self.words = words
        }
    }
    
    let name: String
    let sigil: Sigil
    var characters: [Character]
    
    init(name: String, sigil: House.Sigil) {
        self.name = name
        self.sigil = sigil
        self.characters = []
    }
    
}

final class Character {
    
    let image: UIImage?
    let name: String
    let house: House
    let alias: String?
    
    init(image: UIImage? = nil,
         name: String,
         house: House,
         alias: String? = nil) {
        self.image = image
        self.name = name
        self.house = house
        self.alias = alias
        house.characters.append(self)
    }
}

extension Character {
    var fullName: String {
        "\(name) \(house.name)"
    }
}

extension House {
    static var stark: House {
        House(
            name: "Stark",
            sigil: .init(image: UIImage(named: "Stark"), words: "Winter is comming"))  //se puede hacer sigil con .init o bien con la clase: Sigil(...)
    }
    
    static var targaryen: House {
        House(
            name: "Targaryen",
            sigil: .init(image: UIImage(named: "Targaryen"),
            words: "Fire and Blood"))
    }
    
    static var lannister: House {
        House(name: "Lannister",
              sigil: .init(
                    image: UIImage(named: "Lannister"),
                    words: "Always pays his debts"))
    }
}

extension Character {
    
    static var jon: Character {
        Character(
            image: UIImage(named: "Jon"),
            name: "Jon Snow",
            house: .stark,
            alias: "Lord Snow")
    }
    
    static var danaerys: Character {
        Character(
            image: UIImage(named: "Danaerys"),
            name: "Danaerys",
            house: .targaryen,   // al ser una var statica funciona como enum, .targaryen
            alias: "Mother of dragons")
    }
    
    static var tyrion: Character{
        Character(
            image: UIImage(named: "Tyrion"),
            name: "Tyrion",
            house: .lannister,
            alias: "Dwarf")
    }
}

