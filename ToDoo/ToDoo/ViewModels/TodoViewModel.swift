//
//  TodoViewModel.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import Foundation

class TodoViewModel : ObservableObject{
    @Published var items: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    
    let todoListKey: String  = "todo_list"
    
    init(){
        getItems()
    }
    
    func addItem(title: String){
        let newItem  = ItemModel(Title: title, IsCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateStatus()
        }
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
        
    }
    
    func getItems(){
        // if this fails then return safely
        guard let data = UserDefaults.standard.data(forKey: todoListKey)
        else {
            return
        }
        
        guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else{
            return
        }
        
        self.items = savedItems
        
    }
    
    func saveItems(){
        if let encodeData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodeData, forKey: todoListKey)
        }
    }
}
