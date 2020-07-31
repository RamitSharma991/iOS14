//
//  AppOverlay.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 29/07/20.
//

import SwiftUI
import StoreKit

struct AppOverlay: View {
    @State private var showRecommended = false
    
    
    
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun.bolt.fill")
                .renderingMode(.original)
                .font(.largeTitle)
                .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
                .clipShape(Circle())
            
            
            Button("Show Recommended App") {
                showRecommended.toggle()
            }
            .appStoreOverlay(isPresented: $showRecommended) {
                SKOverlay.AppConfiguration(appIdentifier: "1234321", position: .bottom)
        }
        }
    }
}

struct AppOverlay_Previews: PreviewProvider {
    static var previews: some View {
        AppOverlay()
    }
}
