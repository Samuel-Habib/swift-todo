//
//  TBD.swift
//  todo
//
//  Created by Samuel Fahim on 1/11/25.
//

import Foundation

import SwiftUI

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
            Image("square.and.arrow.up")
        }
    }
}

#Preview {
    TDB()
}
