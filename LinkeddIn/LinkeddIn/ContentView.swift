//
//  ContentView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HomeScreenView()
            }
        }.navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
