//
//  PageViewModel.swift
//  GridReorderingApp
//
//  Created by Ramit sharma on 19/01/21.
//

import SwiftUI

class PageViewModel: ObservableObject {
    
    @Published var urls = [
        Page(url: URL(string: "http://www.google.com")!),
        Page(url: URL(string: "http://www.facebook.com")!),
        Page(url: URL(string: "http://www.apple.com")!),
        Page(url: URL(string: "http://www.youtube.com")!),
        Page(url: URL(string: "http://www.twitter.com")!),
        Page(url: URL(string: "http://www.instagram.com")!),
        Page(url: URL(string: "http://www.iosdevdirectory.com")!),
        Page(url: URL(string: "http://www.hackingwithswift.com")!),
        Page(url: URL(string: "http://www.objc.io")!),
        Page(url: URL(string: "http://www.github.com")!),
        Page(url: URL(string: "http://www.google.com")!),

    
    
    
    ]
    
}
