//
//  TodoItem.swift
//  todo
//
//  Created by Samuel Fahim on 1/12/25.
//

import Foundation
import SwiftUI

struct TodoItem: View {
    
    let todoName: String
    let isDone: Bool
    
    let firstWidth: CGFloat
    let secondWidth: CGFloat
    let roundedRect = RoundedRectangle(cornerRadius: 12)
    
    var body: some View{
        Group{
            HStack{
                ZStack{
                    Text(todoName)
                    roundedRect
                        .fill(Color.blue)
                        .frame(width: firstWidth, height: 50)
                    Text("hello")
                        .foregroundStyle(.white)
                }
                roundedRect
                    .fill(Color.green)
                    .frame(width: secondWidth, height: 50)

            }
            
        }
    }
}

#Preview {
    TodoItem(
        todoName: "hello",
        isDone: false,
        firstWidth: 277,
        secondWidth: 90
    )
    // note these values are just for testing with preview, they only work on one specific device
    // actual values should be provided by geometryreader
}
