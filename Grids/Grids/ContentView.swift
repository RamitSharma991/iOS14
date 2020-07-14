//
//  ContentView.swift
//  Grids
//
//  Created by Ramit sharma on 01/07/20.
//

import SwiftUI

struct ContentView: View {
    
    let data = Bundle.main.decode([String].self, from: "symbols.json")
    let layout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    
    
    
    
    
 //   let data = Array(1...1000).map { "Item \($0)"   }
 //   let layout = [GridItem(.adaptive(minimum: 80))]
 //  let layout = [GridItem(.flexible())]
 //   let layout = [GridItem(.flexible()), GridItem(.flexible())]
 //   let layout = [GridItem(.flexible(maximum: 180)), GridItem(.flexible(maximum: 40))]

    var body: some View {
        
        NavigationView{
            ScrollView {
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack {
                            Image(systemName: item)
                                .foregroundColor(.blue)
                            
                            Text(item)
                                .font(.caption)
                                .bold()
                            
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("SF Symbols Explorer")
        }

        
    }
}

/*
    //Horizontal Grid with rows
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 30) {
                ForEach(data, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color.purple)
                            .frame(height: 50)
                        
                        
                        Text(item)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.horizontal)
        }
        
        
        // Vertical grid with Columns

        ScrollView {
            LazyVGrid(columns: layout, spacing: 30) {
                ForEach(data, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color.purple)
                            .frame(height: 50)
                        
                        
                        Text(item)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.horizontal)
        }
        */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
