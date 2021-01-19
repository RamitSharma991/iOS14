//
//  Food.swift
//  BakeryApp
//
//  Created by Ramit sharma on 13/01/21.
//

import SwiftUI

// Food Model and Sample data...


struct Food: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    var price: String
    var image: String
}

var foods = [
    
    Food(title: "Chocolate Cake", description: "Chocolate cake or chocolate gâteau is a cake flavored with melted chocolate, cocoa powder or both", price: "$19", image: "choclates"),
    Food(title: "Cookies", description: "A biscuit is a flour-based baked food product", price: "$10", image: "cookies"),
    Food(title: "Sandwich", description: "Trim the bread from all the sides and apply butter on one side and the vegies and spreads on the other", price: "$10", image: "sandwich"),
    Food(title: "French fries", description: "French fries or simply fries, chips, finger chips or French- fried potatoes, are batonnet or allumette cut deep-fried potatoes", price: "$15", image: "fries"),
    Food(title: "Pizza", description: "Pizza is a savory dish of Italian consisting of a usually round, flattened base of leavened wheat- based dough topped", price: "$39", image: "pizza"),



]
