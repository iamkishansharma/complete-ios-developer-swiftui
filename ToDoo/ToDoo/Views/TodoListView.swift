//
//  TodoListView.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject var todoViewModel: TodoViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var shouldNavigate = false
    var body: some View {
        ZStack{
            if todoViewModel.items.isEmpty {
                EmptyListView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }else{
                List{
                    ForEach(todoViewModel.items){ item in
                        TodoItemView(item: item)
                            .onTapGesture {
                                withAnimation(.easeIn(duration: 0.1)){
                                    todoViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: todoViewModel.deleteItem)
                    .onMove(perform: todoViewModel.moveItems)
                }
            }
        }.navigationTitle("Todo 📝")
            .navigationBarItems(trailing: EditButton())
            .floatingActionButton(
                color: Color.accentColor,
            image: Image(systemName: "plus")
                .foregroundColor(.white),
                action: {
                    self.shouldNavigate = true
                }
            )
            .overlay(
                NavigationLink(
                    destination: AddTodoView(), isActive: $shouldNavigate){}
                .hidden()
            )
        
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
