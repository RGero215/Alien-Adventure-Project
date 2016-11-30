//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestItem : UDItem?
        let checkItem = itemsFromPlanet(inventory: inventory, planet: planet)
        
        if checkItem.count > 0 {
            for item in checkItem {
                if let carbonAge = item.historicalData["CarbonAge"] as? Int {
                    
                    if let lastItem = oldestItem, let lastItemAge = lastItem.historicalData["CarbonAge"]as? Int, lastItemAge < carbonAge {
                        oldestItem = item
                    } else if  oldestItem == nil {
                        oldestItem = item
                    }
                }
            }
        }
        
        return oldestItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
