//
//  LabelAndIcons.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 17/07/20.
//

import SwiftUI

struct LabelAndIcons: View {
    var body: some View {
    Label {
        Text("Black Lives Matter")
            .foregroundColor(.secondary)
            .font(.largeTitle)
            .padding()
            .background(Color.gray.opacity(0.2))
        clipShape(Capsule())
    } icon: {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.blue)
            .frame(width: 64, height: 64)
        }
        
    }
    
}

struct LabelAndIcons_Previews: PreviewProvider {
    static var previews: some View {
        LabelAndIcons()
    }
}
