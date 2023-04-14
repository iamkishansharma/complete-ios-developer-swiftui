//
//  InvitationView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 2/17/23.
//

import SwiftUI

let samplaData = NetworkModel(id: 1, name: "Honey Singh", position: "SDE at Amazon", mutualConnections: 8, profileImage: "01")
struct InvitationView: View {
    var Data: NetworkModel
    
    var body: some View {
        HStack(alignment: .center){
            Image(Data.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 50, height: 50, alignment: .leading)
                .padding(.horizontal)
            
            
            VStack(alignment: .leading){
                Text(Data.name)
                    .font(.body)
                    .bold()
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(Data.mutualConnections) mutual connections")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            HStack{
                Image(systemName: "xmark.circle")
                    .font(.system(.largeTitle))
                    .foregroundColor(.gray)
                
                Image(systemName: "checkmark.circle")
                    .font(.system(.largeTitle))
                    .foregroundColor(.blue.opacity(0.8))
            }.padding(.horizontal)
        }
    }
    
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: samplaData)
    }
}
