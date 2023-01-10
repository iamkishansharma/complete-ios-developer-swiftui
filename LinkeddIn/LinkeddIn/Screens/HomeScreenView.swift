//
//  HomeScreenView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/10/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack{
            VStack{
                SearchBarView().background(.white)
                    .padding(.horizontal, 10)
            }
            
            Spacer()
            Text("home Screen")
                .textCase(.uppercase)
            Spacer()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
