//
//  ToDooApp.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import SwiftUI

@main
struct ToDooApp: App {
    
    @StateObject var todoViewModel: TodoViewModel = TodoViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                if todoViewModel.items.isEmpty { EmptyListView()} else {TodoListView()}
            }
            
            .environmentObject(todoViewModel)
        }
    }
}
