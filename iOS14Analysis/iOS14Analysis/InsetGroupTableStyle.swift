//
//  InsetGroupTableStyle.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 28/07/20.
//

import SwiftUI

struct InsetGroupTableStyle: View {
    var body: some View {
        List(0..<100) { i in
            Text("Row \(i)")
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct InsetGroupTableStyle_Previews: PreviewProvider {
    static var previews: some View {
        InsetGroupTableStyle()
    }
}
