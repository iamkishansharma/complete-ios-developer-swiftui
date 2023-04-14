//
//  TodoItemView.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import SwiftUI

struct TodoItemView: View {
    let item : ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle":"circle")
                .font(.title2)
                .foregroundColor(item.isCompleted ? .green : .red)
            
            Text(item.title)
                .font(.title2)
                .padding(.vertical, 10)
                .strikethrough(item.isCompleted, color: .green)
            
            Spacer()
        }
    }
}

struct TodoItemView_Previews: PreviewProvider {
    static var item1 = ItemModel(Title: "Eat fruits", IsCompleted: false)
    static var previews: some View {
        
        TodoItemView(item: item1)
    }
}

