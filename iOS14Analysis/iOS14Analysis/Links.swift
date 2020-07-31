//
//  Links.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 20/07/20.
//

import SwiftUI

struct Links: View {
    @State private var date = Date()
    
    
    var body: some View {

        VStack {
            Link(destination: URL(string: "https://vimeo.com/89216531")!) {
                Image(systemName: "link.circle.fill")
                    .font(.largeTitle)
            
            
            }
            
            //Date Picker
            Text("Enter your birthday")
                .font(.largeTitle)
            DatePicker("Enter your birthday", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .labelsHidden()
                .frame(width: 400, height: 400, alignment: .center)
        }
    }
}

struct Links_Previews: PreviewProvider {
    static var previews: some View {
        Links()
    }
}
