//
//  MyNetworksView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/11/23.
//

import SwiftUI

let samplaData = NetworkData(id: 1, name: "Happy Singh", position: "SDE at Amazon", profileImage: "01", mutualConnections: 8)

struct MyNetworksView: View {
    var Data: NetworkData
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10){
            Image(Data.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack{
                Text(Data.name).font(.body).bold()
                Text(Data.name).font(.subheadline)
            }
        }
    }
}

struct MyNetworksView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworksView(Data: samplaData)
    }
}
