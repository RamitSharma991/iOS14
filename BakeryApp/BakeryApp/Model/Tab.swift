//
//  Tab.swift
//  BakeryApp
//
//  Created by Ramit sharma on 14/01/21.
//

import SwiftUI

// Tab model with tab items...

struct Tab: Identifiable {
    
    var id = UUID().uuidString
    var tab: String
    var foods: [Food]
}

var tabsItems = [
    
    Tab(tab: "Order Again", foods: foods.shuffled()),
    Tab(tab: "Picked for you", foods: foods.shuffled()),
    Tab(tab: "Starters", foods: foods.shuffled()),
    Tab(tab: "Gimpub sushi", foods: foods.shuffled()),
    
]
