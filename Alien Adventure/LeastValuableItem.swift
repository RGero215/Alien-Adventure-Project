//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var leastValueItem : UDItem? = nil
        
        if inventory.count > 0 {
            
            leastValueItem = inventory[0]
            
            for item in inventory {
                if item.baseValue < leastValueItem!.baseValue {
                    leastValueItem = item
                }
            }
        }
    
        return leastValueItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
