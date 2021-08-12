//
//  PizzaModel.swift
//  Challenge7-MVVM
//
//  Created by Shepherd on 7/24/21.
//

import Foundation

// Allows us to update the code with UI presses.
class PizzaModel: ObservableObject {
    
    // Broadcasts changes of this property to the UI.
    @Published var pizzas = [Pizza]()
    
    init() {
        pizzas.append(Pizza(name: "Diavola", topping1: "Salami", topping2: "Red pepper"))
        pizzas.append(Pizza(name: "Margherita", topping1: "Tomatoes", topping2: "Mozzarella"))
        pizzas.append(Pizza(name: "Rucola", topping1: "Prosciutto crudo", topping2: "Grana Padano",  topping3: "Rucola"))
    }
    
    /*
     Adds a pineapple to each of our pizzas. Changes the first property to this.
     */
    func addPineapple() {
        // Initialize an empty list of pizzas
        var updatedPizzas = [Pizza]()
        
        // Loop through our old list of pizzas to find their current toppings
        for pizza in pizzas {
            
            // Set a pizza we can change equal to the current pizza in the list
            var newPizza = pizza
            
            // Set this pizza's first topping to pineapple
            newPizza.topping1 = "Pineapple"
            
            // Add the updated pizza to our new list
            updatedPizzas.append(newPizza)
        }
        // Set the current pizzas to our new list, because we cannot directly change the current pizzas from here
        // Instead we need to set it to an entirely new list
        pizzas = updatedPizzas
        
    }
    
}
