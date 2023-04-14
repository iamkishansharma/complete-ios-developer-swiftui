//
//  PostCardView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 2/17/23.
//

import SwiftUI
let samplePostData = PostData(id: 1, image: "02", title: "Kishan Kr Sharma", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data:PostData
    
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(height: 10)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                        .fontWeight(.bold)
                    
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
                
            }.padding(.horizontal)
            
            Text("Looking for a new course on Swift UI, you're already at a great place.").padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}
