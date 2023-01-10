//
//  SearchBarView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/10/23.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchedFor:String = ""
    var body: some View {
        HStack(alignment: .center){
            // Profile image
            NavigationLink(destination: ProfileScreenView()) {
                Image("demo")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
            }
            
            // Search: TextInput
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.blue.opacity(0.1))
                .frame(height: 35)
                .overlay{
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .fontWeight(.bold)
                        TextField("Search", text: $searchedFor)
                            .frame(height: 40)
                    }
                    .padding(.horizontal)
                }
            
            // Message icon
            NavigationLink(destination: MessagesScreenView()) {
                Image(systemName: "ellipsis.message.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
            }
            
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
