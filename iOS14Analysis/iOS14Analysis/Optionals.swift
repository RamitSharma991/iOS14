//
//  Optionals.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 31/07/20.
//

import SwiftUI

struct Optionals: View {
  //  @State var username: String?
    @State var username = ""
    
    
    var body: some View {
        Group {
            
//            if let username = username {
//                Text("Hello, World!")
//            } else {
//                Image(systemName: "questionmark.circle")
//            }
            
//            switch username {
//            case "Prof Proton":
//                Text("Here we go prof!")
//            case "Coady":
//                Text("Welcome Coady")
//            default:
//                Text("Who are Ya? Wwho are ya?")
//
//            }
            
            Button("Press Me") {
                username = "Prof Proton"
            }
        }
        .font(.largeTitle)
    }
}

struct Optionals_Previews: PreviewProvider {
    static var previews: some View {
        Optionals()
    }
}
