//
//  CoffeeViewModel.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 31-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


class CoffeeListViewModel {
    var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
}


struct CoffeeViewModel {
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        return self.coffee.name
    }
    var imageURL: String {
        return self.coffee.imageURL
    }
    var price: Double {
        return self.coffee.price
    }
    
}
