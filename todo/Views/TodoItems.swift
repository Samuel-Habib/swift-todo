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
    
    @StateObject var todoViewModel = TodoViewModel()
    @State private var userInput: String = ""
    
    var body: some View {
        VStack{
            GeometryReader { geometry in
                let totalWidth = geometry.size.width
                let firstWidth = totalWidth * 0.75
                let secondWidth = totalWidth * 0.18

                ScrollView{
                    LazyVGrid(columns: [GridItem(.fixed(firstWidth))], spacing: 10) {
                        ForEach(todoViewModel.todo) {todo in
                            HStack{
                                ZStack{
                                    Text(todo.todoName)
                                    roundedRect
                                        .fill(Color.blue)
                                        .frame(width: firstWidth, height: 50)
                                    Text(todo.todoName)
                                        .foregroundStyle(.white)
                                }
                                Button {
                                    todoViewModel.done(id: todo.id)
                                    print("done")
                                } label: {
                                    roundedRect
                                        .fill(Color.green)
                                        .frame(width: secondWidth, height: 50)
                                }
                            }.opacity(todo.isDone ? 0.5 : 1)
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
                        print("ajlskdf")
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


//                                TodoItem(
//                                    todoName: index.todoName,
//                                    isDone: index.isDone,
//                                    uuid: index.id,
//                                    firstWidth: firstWidth,
//                                    secondWidth: secondWidth
//                                )
