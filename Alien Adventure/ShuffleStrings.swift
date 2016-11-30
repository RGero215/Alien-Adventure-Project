//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        if shuffle.characters.count != s1.characters.count + s2.characters.count {
            return false
        }
        
        var s1Index = s1.startIndex
        var s2Index = s2.startIndex
        
        for character in shuffle.characters {
            if s1Index != s1.endIndex && character == s1[s1Index] {
                s1Index = s1.index(after: s1Index)
            } else if s2Index != s2.endIndex && character == s2[s2Index] {
                s2Index = s2.index(after: s2Index)
            }
        }
        
        return (s1Index == s1.endIndex) && (s2Index == s2.endIndex)
    }
}
