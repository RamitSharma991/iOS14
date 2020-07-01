//
//  ContentView.swift

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: SandwichStore

    var body: some View {
        NavigationView {
        
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: moveSAndwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
                
            }
            .navigationTitle("Sandwiches")
            .toolbar {
                #if os(iOS)
                EditButton()
                #endif
                Button("Add", action: makeSandwich)
            }
            
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
    func makeSandwich() {
        withAnimation {
            store.sandwiches.append(Sandwich(name: "Patty melt", ingredientCount: 3))
        }
        
    }
    
    func moveSAndwiches(from: IndexSet, to: Int) {
        withAnimation {
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
        
    }
    
    func deleteSandwiches(offsets: IndexSet) {
        withAnimation {
            store.sandwiches.remove(atOffsets: offsets)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore)
            ContentView(store: testStore)
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            ContentView(store: testStore)
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
                .environment(\.locale, Locale(identifier: "Sanskrit"))
            
            // for languages like arabic, persian, urdu
            //  .environment(\.layoutDirection, .rightToLeft)

        }
    }
}
 
struct SandwichCell: View {
    
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(
            destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredient")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            
        }
    }
}
