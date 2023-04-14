//
//  ItemModel.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import Foundation

struct ItemModel : Identifiable, Codable{
    let title: String
    let isCompleted: Bool
    let id: String
    
    init(Id: String = UUID().uuidString, Title:String, IsCompleted:Bool){
        self.id = Id
        self.title = Title
        self.isCompleted = IsCompleted
    }
    
    func updateStatus()-> ItemModel{
        return ItemModel(Id: id, Title: title, IsCompleted: !isCompleted)
    }
}
