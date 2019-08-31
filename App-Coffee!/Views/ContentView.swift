//
//  ContentView.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 30-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    var body: some View {
        OrderListView(orders: self.orderListVM.orders)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
