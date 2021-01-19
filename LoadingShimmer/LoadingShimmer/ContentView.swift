//
//  ContentView.swift
//  LoadingShimmer
//
//  Created by Ramit sharma on 01/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home: View {
    @State var multiColor = false
    
    var body: some View {
        VStack(spacing: 25) {
            TextShimmer(text: "Here", multiColors: $multiColor)

            TextShimmer(text: "We go!", multiColors: $multiColor)

            TextShimmer(text: "Shimmer", multiColors: $multiColor)
            Toggle(isOn: $multiColor, label: {
                Text("Enble multicolored Shimmers")
                    .font(.title)
                    .fontWeight(.bold)
            })
            .padding()
        }
        .preferredColorScheme(.dark)
    }
}


// Text Shimmering

struct TextShimmer: View {
    
    var text: String
    @State var animation = false
    @Binding var multiColors: Bool
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.25))
            // Multi color text
            HStack(spacing: 10) {
                ForEach(0..<text.count, id: \.self) { index in
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 55, weight: .bold))
                        .foregroundColor(multiColors ?  randomColor() : Color.white)

                }
            }
            .mask(
                Rectangle()
                    .fill(
                        LinearGradient(gradient: .init(colors: [Color.white, Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    
                    )
                    .rotationEffect(.init(degrees: 70))
                    .padding(20)
                    .offset(x: -250)
                    .offset(x: animation ? 500 : 0)
            )
            .onAppear(perform: {
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                    animation.toggle()
                    
                    // Move view continuosly so it creates shimmer effect
    
                }
            })
        }
    }
    func randomColor() -> Color {
        
        let color = UIColor(red: CGFloat.random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        
        return Color(color)
    }
}
