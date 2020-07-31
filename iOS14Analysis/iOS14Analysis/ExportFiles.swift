//
//  ExportFiles.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 30/07/20.
//

import SwiftUI

struct ExportFiles: View {
    @Environment(\.exportFiles) var exportAction
    
    
    var body: some View {
        Button("Export File") {
            let url = Bundle.main.url(forResource: "symbols", withExtension: "json")!
            
            exportAction(moving: url) { result in
                switch result {
                case .success(let url):
                    print("Success! Moved to \(url)")
                case .failure(let error) :
                    print("Oops! :\(error.localizedDescription)")
                case .none:
                    print("Cancelled")
                }
            }
        }
    }
}

struct ExportFiles_Previews: PreviewProvider {
    static var previews: some View {
        ExportFiles()
    }
}
