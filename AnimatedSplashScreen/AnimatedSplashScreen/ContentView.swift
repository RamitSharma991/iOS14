//
//  ContentView.swift
//  AnimatedSplashScreen
//
//  Created by Ramit sharma on 08/01/21.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        
        SplashScreenn()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SplashScreenn: View {
    @State var show = false
    @State var phNo = ""
    
    var body: some View {
        
        VStack {
            ZStack {
                Color("bg")
                    .ignoresSafeArea()
                VStack {
                    AnimatedView(show: $show)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                        .padding(.bottom, -35)
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 1, content: {
                                Text("Login")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Text("Enter your phone number to continue")
                                    .foregroundColor(.gray)
                            })
                            
                            Spacer(minLength: 15)
                            
                        }
                        
                        VStack {
                            HStack(spacing: 15) {
                                Text("+1")
                                    .foregroundColor(.black)
                                
                                Rectangle()
                                    .fill(Color("bg"))
                                    .frame(width: 1, height: 18)
                                
                                TextField("", text: $phNo)
                            }
                            
                            Divider()
                                .background(Color("bg"))
                        }
                        .padding(.vertical)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Verify your Number")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .frame(width: UIScreen.main.bounds.width - 60)
                                .background(Color("bg"))
                                .clipShape(Capsule())
                        })
                        
                        HStack {
                            Rectangle()
                                .fill(Color.black.opacity(0.3))
                                .frame(height: 1)
                            
                            Text("OR")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black.opacity(0.3))
                            
                            Rectangle()
                                .fill(Color.black.opacity(0.3))
                                .frame(height: 1)
                        }
                        
                        .padding(.vertical)
                        
                        HStack(spacing: 20) {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                                HStack(spacing: 10) {
                                    Image("fb")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                    
                                    Text("Facebook")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                }
                                .padding(.vertical)
                                .frame(width: (UIScreen.main.bounds.width - 80) / 2)
                                .background(Color("fb"))
                                .clipShape(Capsule())
                                
                            })
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                                HStack(spacing: 10) {
                                    Image("Google")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                        .shadow(radius: 5)
                                    
                                    Text("Google")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                }
                                .padding(.vertical)
                                .frame(width: (UIScreen.main.bounds.width - 80) / 2)
                                .background(Color("google"))
                                .clipShape(Capsule())
                                
                            })
                        }
                        
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                        
                        //Bottom to up transition
                        .frame(width: show ? nil : 0)
                        .opacity(show ? 1 : 0)
                }
            }
        }
    }
}


//Animated View...

struct AnimatedView: UIViewRepresentable {
    
    @Binding var show: Bool
    
    func makeUIView(context: Context) -> AnimationView {
        
        
        let view = AnimationView(name: "splash", bundle: Bundle.main)
        
        view.play { (status) in
            if status {
                // toggle view
                
                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.8, blendDuration: 0.8)) {
                    show.toggle()
                }
            }
        }
        
        return view
        
    }
    
    func updateUIView(_ uiView: AnimationView, context: Context) {
        //...
    }
    
    
    
}


