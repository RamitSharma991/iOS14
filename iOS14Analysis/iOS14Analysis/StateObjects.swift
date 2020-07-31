//
//  StateObjects.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 31/07/20.
//

import SwiftUI

class User: ObservableObject {
    var username = "@ProfessorProton"
}

struct StateObjects: View {
    @StateObject var user = User()
    var body: some View {
        Text("Username: \(user.username)")
    }
}

struct StateObjects_Previews: PreviewProvider {
    static var previews: some View {
        StateObjects()
    }
}
