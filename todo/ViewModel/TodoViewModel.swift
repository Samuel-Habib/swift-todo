//
//  TodoViewModel.swift
//  todo
//
//  Created by Samuel Fahim on 1/11/25.
//
//
import Foundation
import SwiftUI
//
//class TodoViewModel: ObservableObject{
////    @Published var model: TodoModel
////    var todos: [TodoModel] {
////        return model
////    }
//    
////    var todoVM = TodoModel{
////        TodoModel.Todo(
////    }
////    
//    
//    private func createTodo() -> TodoModel{
//        retun
//    }
//    
//}


class TodoViewModel: ObservableObject{
    @Published var todo: [Todo] = []
    
    func createTodo(
        todoName: String,
        isDone: Bool,
        date: Date
    ){
        let newTodo = Todo(
             todoName: todoName,
             isDone: isDone,
             date: date)
        todo.append(newTodo)
    }
    
}
