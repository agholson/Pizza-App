//
//  ContentView.swift
//  Challenge7-MVVM
//
//  Created by Shepherd on 7/24/21.
//

import SwiftUI

struct ContentView: View {
    
    // Allows these properties to change.
    @ObservedObject var pizzaShop = PizzaModel()
    
    var body: some View {
        VStack {
            
            List(pizzaShop.pizzas) { pizza in
                VStack(alignment: .leading) {
                    Text(pizza.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text("\(pizza.topping1), \(pizza.topping2), \(pizza.topping3)")
                    }
                }
            }
            
            Button("Add pineapple") {
                pizzaShop.addPineapple()
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
