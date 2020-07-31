//
//  ContentView.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 17/07/20.
//

import SwiftUI

struct ContentView: View {
    @State private var downloadAmount = 0.0
    var body: some View {
        VStack {
            ProgressView("Downloading", value: downloadAmount, total: 100)
        Button("Increment Download") {
            if downloadAmount < 100 {
                downloadAmount += 10
            }
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
