//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let itemsListURL = Bundle.main.url(forResource: "ItemList", withExtension: "plist")!
        let itemsArray = NSArray(contentsOf: itemsListURL) as! [[String:AnyObject]]
        var bannedItemIDs = [Int]()
        
        for item in itemsArray {
            guard let itemID = item["ItemID"] as? Int else {
                continue
            }
            if let name = item["Name"] as? String, name.lowercased().contains("laser") {
                if let historicalData = item["HistoricalData"] as? [String:AnyObject], let carbonAge = historicalData["CarbonAge"] as? Int, carbonAge < 30 {
                    bannedItemIDs.append(itemID)
                }
            }
        }
        return bannedItemIDs
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
