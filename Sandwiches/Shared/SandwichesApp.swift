//
//  SandwichesApp.swift
//  Shared
//
//  Created by Ramit sharma on 25/06/20.
//

import SwiftUI

@main
struct SandwichesApp: App {

    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
