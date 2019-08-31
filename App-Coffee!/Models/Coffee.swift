//
//  Coffee.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 30-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


struct Coffee {
    
    let name: String
    let imageURL: String
    let price: Double
}

extension Coffee {
    
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.5),
            Coffee(name: "Regular", imageURL: "Regular", price: 2.1),
            Coffee(name: "Expresso", imageURL: "Expresso", price: 1.0)
        
        
        ]
    }
    
}
