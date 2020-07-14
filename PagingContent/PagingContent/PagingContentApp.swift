//
//  PagingContentApp.swift
//  PagingContent
//
//  Created by Ramit sharma on 13/07/20.
//

import SwiftUI

@main
struct PagingContentApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                ContentView()
                ContentView()
                ContentView()
                
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}
