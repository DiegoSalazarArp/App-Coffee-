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
    
    @State private var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            OrderListView(orders: self.orderListVM.orders)
            .navigationBarTitle("Coffee App")
                .navigationBarItems(leading: Button(action: reloadOrders) {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color.gray)
                    
                    }, trailing: Button(action: showAddCoffeeOrderView) {
                        Image(systemName: "plus")
                            .foregroundColor(Color.gray)
                })
            
            
                .sheet(isPresented: self.$showModal) {
                    AddCoffeeOrderView(isPresented: self.$showModal)
            }
        }
    }
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
