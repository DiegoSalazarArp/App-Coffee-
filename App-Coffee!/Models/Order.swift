//
//  Order.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 30-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


struct Order: Codable {
    
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
    
}
