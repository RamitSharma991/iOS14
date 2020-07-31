//
//  DateFormatting.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 28/07/20.
//

import SwiftUI

struct DateFormatting: View {
    var body: some View {
        Text(Date().addingTimeInterval(600), style: .date) //.timer, .relative
    }
}

struct DateFormatting_Previews: PreviewProvider {
    static var previews: some View {
        DateFormatting()
    }
}
