//
//  PostActionView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 2/17/23.
//

import SwiftUI


struct PostActionView: View {
    var body: some View {
        VStack(alignment: .leading){
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            
            Divider()
            
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Photo")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Photo")
            }.padding(.horizontal)
            
        }
    }
}

struct PostActionView_Previews: PreviewProvider {
    static var previews: some View {
        PostActionView()
    }
}
