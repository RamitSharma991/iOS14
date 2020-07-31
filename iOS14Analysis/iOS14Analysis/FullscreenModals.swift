//
//  FullscreenModals.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 27/07/20.
//

import SwiftUI

struct FullscreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is a modal view")
            Text("Tap to dismiss")
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.pink)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct FullscreenModals: View {
    
    @State private var isPresented = false
    
    var body: some View {
        Button("Present!") {
            self.isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullscreenModalView.init)
    }
}

struct FullscreenModals_Previews: PreviewProvider {
    static var previews: some View {
        FullscreenModals()
    }
}
