 //
//  OrderTotalView.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 31-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct OrderTotalView: View {
    
    let total: Double
    
    var body: some View {
        HStack(alignment: .center ) {
            Spacer()
            Text(String(format: "$%.2f", self.total)).font(.title)
            Spacer()
        }.padding(10)
            .foregroundColor(Color.green)
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 45.67)
    }
}
