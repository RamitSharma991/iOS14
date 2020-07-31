//
//  DocumentApps.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 23/07/20.
//

import SwiftUI
import UniformTypeIdentifiers

struct TextFIle: FileDocument {
    static var readableContentTypes = [UTType.plainText]
    
var text = ""

init(initialText: String = "") {
    text = initialText
}

    init(fileWrapper: FileWrapper, contentType: UTType) throws {
        if let data = fileWrapper.regularFileContents {
            text = String(decoding: data, as: UTF8.self)
        }
    }
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
        let data = Data(text.utf8)
        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
}
struct DocumentApps: View {
    @Binding var document: TextFIle
    
    
    var body: some View {
        TextEditor(text: $document.text )
    }
}

struct DocumentApps_Previews: PreviewProvider {
    static var previews: some View {
        DocumentApps(document: .constant(TextFIle()))
    }
}
