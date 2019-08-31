//
//  Webservice.swift
//  App-Coffee!
//
//  Created by Diego Salazar Arp on 30-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


class Webservice {
    
    func createCoffeeOrder(order: Order, completion: @escaping (CreateOrderResponse?) -> ()) {
        
        guard let url = URL(string: "https://empty-chipmunk.glitch.me/orders") else {
            fatalError("Invalid Url")
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("appliction/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(order)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                    
                }
                return
            }
            
            let createOrderResponse = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
            DispatchQueue.main.async {
                completion(createOrderResponse)
                
            }
            
        }.resume()
        
    }
    
    
    
    func getAllOrder(completion: @escaping ([Order]?) -> ()) {
        
        guard let url = URL(string: "https://empty-chipmunk.glitch.me/orders") else
        {
            completion (nil)
            return
            
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                    
                }
                return
            }
            let orders =  try? JSONDecoder().decode([Order].self, from: data)
            
            DispatchQueue.main.async {
                completion(orders)
            }
            
            
        }.resume()
        
    }
    
}