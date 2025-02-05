//
//  CompletedView.swift
//  todo
//
//  Created by Samuel Fahim on 2/4/25.
//


import Foundation
import SwiftUI

struct DoneView: View {
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
//                let secondWidth = totalWidth * 0.18
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.fixed(firstWidth))], spacing: 10) {
                        ForEach(todoViewModel.todo.filter { $0.isDone }) { todo in
                            HStack {
                                ZStack {
                                    roundedRect
                                        .fill(Color.blue)
                                        .frame(width: firstWidth, height: 50)
                                    Text(todo.todoName)
                                        .foregroundStyle(.white)
                                        .onAppear{
                                            print(todoViewModel.todo)
                                        }
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
}
