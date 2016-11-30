//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rarityOfItems : [UDItemRarity : Int] = [
            .common: 0,
            .uncommon: 0,
            .rare: 0,
            .legendary: 0
        ]
        if inventory.count > 0 {
            for item in inventory {
                rarityOfItems[item.rarity]! += 1
            }
        }
        
        return rarityOfItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
