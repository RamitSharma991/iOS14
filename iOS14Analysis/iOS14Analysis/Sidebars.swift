//
//  Sidebars.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 23/07/20.
//

import SwiftUI


struct SidebarView: View {
    var body: some View {
        List(1..<100) { i in
           Text("Row \(i)")
        }
        .listStyle(SidebarListStyle())
    }
}

struct PrimaryView: View {
    var body: some View {
        Text("Primary")
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail")
    }
}

struct Sidebars: View {
    var body: some View {
        NavigationView {
            SidebarView()
            PrimaryView()
            DetailView()
        }
    }
}

struct Sidebars_Previews: PreviewProvider {
    static var previews: some View {
        Sidebars()
    }
}
