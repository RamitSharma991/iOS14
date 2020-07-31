//
//  iOS14AnalysisApp.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 17/07/20.
//

import SwiftUI
import CoreSpotlight

@main
struct iOS14AnalysisApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        
//        DocumentGroup(newDocument: TextFIle()) { file in
//            DocumentApps(document: file.$document)
//        }
        
        
        WindowGroup {
            ContentView()
                .onContinueUserActivity(CSSearchableItemActionType, perform: handleSpotlight)
        }
    }
    func handleSpotlight(_ userActivity: NSUserActivity) {
        if let id = userActivity.userInfo?[CSSearchableItemActivityIdentifier] as? String {
            print("FOund identifier \(id)")
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Finished Launching!")
        return true
    }
        }
