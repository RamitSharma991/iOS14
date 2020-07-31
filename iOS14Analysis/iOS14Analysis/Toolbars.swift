//
//  Toolbars.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 22/07/20.
//

import SwiftUI

struct Toolbars: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Button("Press Me") {
                                print("Presed")
                            }
                            Button("Second") {
                                print("Pressed")
                            }
                        }
                    }
                }
        }
    }
}

struct Toolbars_Previews: PreviewProvider {
    static var previews: some View {
        Toolbars()
    }
}
