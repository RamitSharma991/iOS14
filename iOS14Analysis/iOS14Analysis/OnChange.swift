//
//  OnChange.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 28/07/20.
//

import SwiftUI

struct OnChange: View {
    @State private var name = ""
    
    var body: some View {

        TextField("Enter your name:", text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .onChange(of: name) { newValue in
                print("Name changed to \(name)")
            }
    }
}

struct OnChange_Previews: PreviewProvider {
    static var previews: some View {
        OnChange()
    }
}
