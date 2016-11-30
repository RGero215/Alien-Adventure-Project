//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var requestTypes = requestTypes
        for badge in badges {
            if let indexForBadge = requestTypes.index(of: badge.requestType) {
                requestTypes.remove(at: indexForBadge)
            }
        }
        
        return requestTypes.count == 0
    }
    
}

