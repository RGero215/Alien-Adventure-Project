//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let planetDataURL = Bundle.main.url(forResource:"PlanetData", withExtension: "json")!
        let planetData = NSData(contentsOf: planetDataURL)
        var planetDataArray : NSArray!
        do {
            planetDataArray = try! JSONSerialization.jsonObject(with: planetData as! Data, options: .allowFragments) as! NSArray
        }
        
        var highestValue = 0
        var highestValuePlane = ""
        
        let planetDictionaries = planetDataArray as! [[String:AnyObject]]
        
        for planet in planetDictionaries {
            var planetValue = 0
            
            guard let planetName = planet["Name"] as? String else {
                continue
            }
            if let commonItemsDetected = planet["CommonItemsDetected"] as? Int {
                planetValue += commonItemsDetected
            }
            if let uncommonItemsDetected = planet["UncommonItemsDetected"] as? Int {
                planetValue += uncommonItemsDetected * 2
            }
            if let rareItemsDetected = planet["RareItemsDetected"] as? Int {
                planetValue += rareItemsDetected * 3
            }
            if let legendaryItemsDetected = planet["LegendaryItemsDetected"] as? Int {
                planetValue += legendaryItemsDetected * 4
            }
            
            if planetValue > highestValue {
                highestValue = planetValue
                highestValuePlane = planetName
            }

        }
        
        return highestValuePlane
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
