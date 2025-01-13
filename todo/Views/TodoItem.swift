////
////  TodoItem.swift
////  todo
////
////  Created by Samuel Fahim on 1/12/25.
////
//
//import Foundation
//import SwiftUI
//
//struct TodoItem: View {
//    
//    let todoName: String
//    let isDone: Bool
//    let uuid: UUID
//    
//    let firstWidth: CGFloat
//    let secondWidth: CGFloat
//    let roundedRect = RoundedRectangle(cornerRadius: 12)
//    
////    @StateObject var todoViewModel = TodoViewModel()
//    
//    var body: some View{
//        Group{
//            HStack{
//                ZStack{
//                    Text(todoName)
//                    roundedRect
//                        .fill(Color.blue)
//                        .frame(width: firstWidth, height: 50)
//                    Text(todoName)
//                        .foregroundStyle(.white)
//                }
//                Button {
//                    todoViewModel.done(id: uuid)
//                    print("done")
//                } label: {
//                    roundedRect
//                        .fill(Color.green)
//                        .frame(width: secondWidth, height: 50)
//                }
//
//
//            }
//            
//        }
//    }
//}
//
//
