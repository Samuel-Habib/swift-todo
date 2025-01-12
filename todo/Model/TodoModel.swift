//
//  TodoModel.swift
//  todo
//
//  Created by Samuel Fahim on 1/11/25.
//

import Foundation

//struct TodoModel{
//    
//    private(set) var todos:Array<Todo>
//
////    init(todoFactory: ()->(Todo)){
////        todos.append(todoFactory())
////    }
//
//
//}

struct Todo: Identifiable{
    var id = UUID()
    var todoName: String
    var isDone: Bool
    var date: Date
}

