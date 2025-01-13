//
//  ContentView.swift
//  todo
//
//  Created by Samuel Fahim on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TDB()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
        }
    }
}


#Preview(body: {
    ContentView()
})



