//
//  MatchedGeometry.swift
//  iOS14Analysis
//
//  Created by Ramit sharma on 27/07/20.
//

import SwiftUI

struct MatchedGeometry: View {
    @State private var isFlipped = false
    @Namespace private var animation
    @State private var isZoomed = false
    
    var frame: CGFloat {
        isZoomed ? 300 : 44
    }
    
 //  /*
    var body: some View {
        VStack {
            if isFlipped {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                
                
                Text("Led Zeppelin - 1969")
                    .font(.headline)
                    .matchedGeometryEffect(id: "Album Title", in: animation)
            } else {
                Text("Led Zeppelin - 1969")
                    .font(.headline)
                    .matchedGeometryEffect(id: "Album Title", in: animation)
                Circle()
                    .fill(Color.pink)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Shape", in: animation)
            }
        }
        .onTapGesture {
            withAnimation {
                self.isFlipped.toggle()
            }
        }
    }
}

// */

/*
var body: some View {
    VStack {
        Spacer()
        
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: frame, height: frame)
                    .padding(.top, isZoomed ? 20 : 0)
                
                if isZoomed == false {
                    Text("Led Zeppelin - 1969")
                        .font(.headline)
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                    
                    Spacer()
                }
            }
            if isZoomed == true {
                Text("Led Zeppelin - 1969")
                    .font(.headline)
                    .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                    .padding(.bottom, 60)
                
                Spacer()
            }
        }
        onTapGesture {
            withAnimation(.spring()) {
                self.isZoomed.toggle()
                
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: isZoomed ? 400 : 60)
        .background(Color(white: 0.8))
        
    }
    
}
    
}

*/



struct MatchedGeometry_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometry()
    }
}

