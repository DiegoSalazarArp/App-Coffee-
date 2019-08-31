//
//  AddCoffeeOrderView.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 31-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Section(header: Text("Information").font(.body)) {
                        TextField("Enter name", text: self.$addCoffeeOrderVM.name )
                        
                        
                        
                    }
                    
                    Section(header: Text("Select Coffee").font(.body)) {
                        ForEach(addCoffeeOrderVM.coffeeList, id:\.name) { coffee in
                            
                            CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
                        }
                    }
                    
                }
            }
        }

    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView()
    }
}

struct CoffeeCellView: View {
    
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(15)
            Text(coffee.name)
                .font(.title)
                .padding([.leading], 20)
            Spacer()
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "").padding()
        }.onTapGesture {
            self.selection = self.coffee.name
        }
    }
}
