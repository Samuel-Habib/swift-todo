//
//  ContentView.swift
//  todo
//
//  Created by Samuel Fahim on 6/6/24.
//

import SwiftUI
#Preview {
    ContentView()
}

struct ContentView: View {
    var body: some View {
        TDB()
    }
}

struct TDB: View {
    // todo + button
    
    var body: some View {
        VStack{
            Text("Todo").font(.title).padding()
            TodoItems()
            Button(action: {
                // This button does nothing
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 12).fill(.red).frame(width: 100,height: 15)
                    Text("Do Nothing")
                }
            }
        }
    }
}


struct TodoItems: View {
    // Define your grid items
    private var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    let roundedRect = RoundedRectangle(cornerRadius: 12)
    
    var body: some View {
        VStack{
            GeometryReader { geometry in
                let totalWidth = geometry.size.width
                let firstWidth = totalWidth * 0.75
                let secondWidth = totalWidth * 0.25
                
                ScrollView{
                    LazyVGrid(columns: [
                        GridItem(.fixed(firstWidth)),
                        GridItem(.fixed(secondWidth))
                    ], spacing: 10) {
                        ForEach(0...20, id: \.self) {index in
                            Group{
                                roundedRect
                                    .fill(Color.blue)
                                    .frame(width: firstWidth, height: 50)
                                roundedRect
                                    .fill(Color.green)
                                    .frame(width: secondWidth, height: 50)
                                
                            }
                        }
                    }
                }
            }
        }.padding()
    }
}
