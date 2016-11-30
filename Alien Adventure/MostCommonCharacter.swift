//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var charactersCount = [Character:Int]()
        
        if inventory.count > 0 {
            for item in inventory {
                for character in item.name.characters {
                    if let _ = charactersCount[character] {
                        charactersCount[character]! += 1
                    } else {
                        charactersCount[character] = 1
                    }
                }
            }
        }
        
        var mostCommonCharacter : Character?
        var greatestCharacterCount = 0
        
        for (character, count) in charactersCount {
            if count > greatestCharacterCount {
                mostCommonCharacter = character
                greatestCharacterCount = count
            }
        }
        
        return mostCommonCharacter
    }
}
