//
//  OrderListViewModel.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 30-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    
    func fetchOrders() {
        Webservice().getAllOrder() { orders in
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
            
        }
    }
    
}


class OrderViewModel {
    
    let id = UUID()
    
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    var size: String {
        return self.order.size
    }
    var coffeeName: String {
        return self.order.coffeeName
    }
    var total: Double {
        return self.order.total
    }
    
}


