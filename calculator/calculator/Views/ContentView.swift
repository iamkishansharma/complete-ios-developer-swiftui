//
//  ContentView.swift
//  Calculator
//
//  Created by Kishan Kr Sharma on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.orange.opacity(0.6),.purple.opacity(0.4)], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            KeyView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
