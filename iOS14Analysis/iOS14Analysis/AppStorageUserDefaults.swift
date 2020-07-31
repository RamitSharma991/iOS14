//
//  AppStorageUserDefaults.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 30/07/20.
//

import SwiftUI

struct AppStorageUserDefaults: View {
    @AppStorage("username", store:UserDefaults(suiteName: "custom suite name")) var username = "Anonymous"
    
    
    var body: some View {
        VStack {
            Text("Welcome! \(username)")
            
            Button("Log in") {
                UserDefaults.standard.set("RamitSharma", forKey: "username")
            }
        }
    }
}

struct AppStorageUserDefaults_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageUserDefaults()
    }
}
