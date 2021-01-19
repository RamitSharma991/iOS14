//
//  ContentView.swift
//  ChainingAnimation
//
//  Created by Ramit sharma on 11/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}

struct Home: View {
    
    @State var  animations: [Bool] = [false, false, false, false]
    @State var duration: Double = 0
    @State var finished = false
    
    
    
    var body: some View {
        
        ZStack {
            Image("bg")
                .resizable()
            
            HStack {
                
                ZStack(alignment: .bottomTrailing) {
                    
                    Image("monster")
                        .resizable()
                    
                    if self.animations[2] {
                        Text("grrr...grrr...\nmuahahahaha")
                            .padding(10)
                            .padding(.top, 20)
                            .background(Color.white)
                            .clipShape(CShape())
                            .cornerRadius(5)
                            .offset(y: 80)
                        
                    }
                    
                    
                }
                .frame(width: 220, height: UIScreen.main.bounds.height / 2)
                .offset(x: self.finished ? -1000 : self.animations[0] ? 0 : -1000, y: -30)
                //.offset(x: self.animations[0] ? 0 : -1000, y: -30)
                
                
                Spacer()
                
                ZStack(alignment: .bottomLeading) {
                    Image("player")
                        .resizable()
                    
                    if self.animations[3] {
                        Text("Oh! my god.. need to escape from Monster..")
                            .padding(10)
                            .padding(.top, 20)
                            .background(Color.white)
                            .clipShape(CShape())
                            .cornerRadius(5)
                            .offset(y: 80)
                        
                    }
                }
                .frame(width: 200, height: UIScreen.main.bounds.height / 2)
                .offset(x: self.finished ? -1000 : self.animations[1] ? -60 : -1500, y: -30)
                //.offset(x: self.animations[1] ? -60 : -1500, y: -30)
                
            }
            
            //Button views..
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        
                    }) {
                        Image("settings")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 75, height: 75)
                    }
                    .offset(x: self.finished ? 0 : -300)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        
                    }) {
                        Image("audio")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 75, height: 75)
                        
                    }
                    .offset(x: self.finished ? 0 : 300)
                    
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        
                        
                    }) {
                        Image("help")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 75, height: 75)
                    }
                    .offset(x: self.finished ? 0 : 300)
                }
                
            }
            .padding()
            
            
            //play button
            
            Button(action: {
                
                for i in 0..<self.animations.count {
                    self.animations[i] = false
                }
                self.finished = false
                self.duration = 0
                
                self.doAnimations()
                
            }) {
                Image("play")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 150, height: 150)
                
            }
            // .. scaling the view
            .scaleEffect(self.finished ? 1 : 0)
        }
        
        
        .onAppear(perform: {
            self.doAnimations()
        })
        .edgesIgnoringSafeArea(.all)
    }
    
    
    
    
    func doAnimations() {
        // player comes first
        withAnimation(Animation.easeIn.speed(0.3)) {
            
            
            self.animations[1].toggle()
            self.duration += 0.8
        }
        
        // Then comes the Monster

        //using duration calculation as the delay parameter
        
        DispatchQueue.main.asyncAfter(deadline: .now() + self.duration) {
            
            withAnimation(Animation.easeIn.speed(0.3)) {
                
                self.animations[0].toggle()
                self.duration += 0.4
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + self.duration) {
                withAnimation(Animation.easeIn.speed(0.3)) {
                    
                    self.animations[2].toggle()
                    self.animations[3].toggle()
                    self.duration += 0.4
                    
                }
                //Finishing animation..
                
                DispatchQueue.main.asyncAfter(deadline: .now() + self.duration) {
                    //hiding player talk witjout animation
                    self.animations[3].toggle()
                    
                    //modifing speed for finishing anim...
                    withAnimation(Animation.easeIn.speed(0.25)) {
                        
                        self.finished.toggle()
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}




//Popover arrows

struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        
        return Path { path in
            
            path.move(to: CGPoint(x: 0, y: 20))
            
            path.addLine(to: CGPoint(x: (rect.width / 2) - 15, y: 20))
            path.addLine(to: CGPoint(x: (rect.width / 2), y: 0))
            path.addLine(to: CGPoint(x: (rect.width / 2) + 15, y: 20))
            
            
            path.addLine(to: CGPoint(x: rect.width, y: 20))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            
        }
    }
}
