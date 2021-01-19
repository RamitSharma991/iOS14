//
//  ContentView.swift
//  CarouselSliderHeroAnimation
//
//  Created by Ramit sharma on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var homeModel = CarouselViewModel()
    var body: some View {
        
        Home()
            //using it as environment objecr...
            .environmentObject(homeModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
