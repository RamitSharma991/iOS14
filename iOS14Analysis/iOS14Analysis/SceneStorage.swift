//
//  SceneStorage.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 30/07/20.
//

import SwiftUI

struct SceneStorage: View {
 //   @SceneStorage("Saved") var text = ""
    
    var body: some View {
        NavigationView {
  //          TextEditor(text: $text)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SceneStorage_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorage()
    }
}
