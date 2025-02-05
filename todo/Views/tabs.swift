//
//  tabs.swift
//  todo
//
//  Created by Samuel Fahim on 2/4/25.
//

import SwiftUI

struct tabs: View {
    var body: some View {
        TabView{
            TDB().tabItem {
                Label("Home", systemImage: "house")
            }
            DoneView().tabItem {
                Label("Done", systemImage: "checkmark")
            }
        }
        
    }
}
