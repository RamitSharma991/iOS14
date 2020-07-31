//
//  Videos.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 17/07/20.
//
import AVKit
import SwiftUI

struct Videos: View {
    var body: some View {
    
            VideoPlayer(player: AVPlayer(url: URL(string: "https://vimeo.com/289199908")!)) {
                VStack {
                    Text("Watermark")
                        .font(.caption)
                        .foregroundColor(.blue)
                        .background(Color.black.opacity(0.7))
                        .clipShape(Capsule())

                    Spacer()
                    
                }
                
            }
        
    }
    
}

struct Videos_Previews: PreviewProvider {
    static var previews: some View {
        Videos()
    }
}
