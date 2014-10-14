//
//  FactBook.swift
//  LetMeTeach
//
//  Created by Vadim Drobinin on 14/10/14.
//  Copyright (c) 2014 Vadim Drobinin. All rights reserved.
//

import Foundation

struct FactBook {
    let factsArray = ["Fact 1", "Fact 2", "Fact 3"]
    
    func randomFact() -> String {
        var randomInt = Int(arc4random_uniform(UInt32(factsArray.count)))
        
        return factsArray[randomInt]
    }
}