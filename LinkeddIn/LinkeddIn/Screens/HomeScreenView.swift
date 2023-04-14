//
//  HomeScreenView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/10/23.
//

import SwiftUI

var postData: [PostData] = [
    .init(id: 0, image: "0", title: "Aakash Chaudhary", followers: 4066, profileImage: "00"),
    .init(id: 1, image: "1", title: "Roshan Budhathoki", followers: 2345, profileImage: "01"),
    .init(id: 2, image: "2", title: "HeyCode Inc.", followers: 1235, profileImage: "02"),
    .init(id: 3, image: "3", title: "LinkedIn", followers: 908, profileImage: "03"),
    .init(id: 4, image: "4", title: "Intel", followers: 1234, profileImage: "04"),
    .init(id: 5, image: "5", title: "Apple LLC.", followers: 567, profileImage: "05"),
    .init(id: 6, image: "6", title: "Google LLC.", followers: 346, profileImage: "00")
    
    ]
struct HomeScreenView: View {
    var body: some View {
        VStack{
            VStack{
                SearchBarView().background(.white)
                    .padding(.horizontal, 10)
            }
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center){
                    PostActionView()
                    
                    ForEach(postData, id:\.id){ data in
                        PostCardView(data: data)
                    }
                }
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
