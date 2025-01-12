//
//  TodoItems.swift
//  todo
//
//  Created by Samuel Fahim on 1/11/25.
//

import Foundation
import SwiftUI

struct TodoItems: View {
    // Define your grid items
    private var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]
    
    let roundedRect = RoundedRectangle(cornerRadius: 12)
    
    @ObservedObject private var todoViewModel = TodoViewModel()
    @State private var userInput: String = ""
    
    var body: some View {
        VStack{
            GeometryReader { geometry in
                let totalWidth = geometry.size.width
                let firstWidth = totalWidth * 0.75
                let secondWidth = totalWidth * 0.18

                ScrollView{
                    LazyVGrid(columns: [GridItem(.fixed(firstWidth))], spacing: 10) {
                        ForEach(0...20, id: \.self) {index in
                            TodoItem(
                                todoName: "hello",
                                isDone: false,
                                firstWidth: firstWidth,
                                secondWidth: secondWidth
                            )
                        }
                    }
                }.onAppear{
                    print("Total width: \(totalWidth)")
                }
            }
            // Create a new todo
            HStack{
                TextField("Enter your text", text: $userInput)
                Button {
                    if(!(userInput.isEmpty)){
                        todoViewModel.createTodo(todoName: userInput, isDone: false, date: Date())
                        print(todoViewModel.todo)
                    }

                } label: {
                    Text("Submit")
                }

            }

        }.padding()
    }
}

#Preview {
    TodoItems()
}
