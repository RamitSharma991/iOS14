//
//  DisclosureGroups.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 20/07/20.
//

import SwiftUI

struct DisclosureGroups: View {
    @State private var revealDetails = false
    
    var body: some View {
        VStack {
            DisclosureGroup("Show terms", isExpanded: $revealDetails) {
                
            Text("Long term terms and conditions,Long term terms and conditionsLong term terms and conditions,Long term terms and conditions,Long term terms and conditions,Long term terms and conditions,Long term terms and conditions")
                Button("Hide again") {
                    revealDetails.toggle()
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct DisclosureGroups_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroups()
    }
}
