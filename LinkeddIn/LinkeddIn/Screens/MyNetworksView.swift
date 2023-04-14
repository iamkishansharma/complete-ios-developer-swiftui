//
//  MyNetworksView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/11/23.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Marry", position: "SDE at Paytm", mutualConnections: 34, profileImage: "00"),
    .init(id: 1, name: "Peter", position: "Assistant Manager", mutualConnections: 45, profileImage: "01"),
    .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutualConnections: 67, profileImage: "02"),
    .init(id: 3, name: "Sara", position: "open to work", mutualConnections: 103, profileImage: "03"),
    .init(id: 4, name: "Kia", position: "GET at HCL", mutualConnections: 12, profileImage: "04"),
    .init(id: 5, name: "Shristi", position: "Student", mutualConnections: 78, profileImage: "05"),
    .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutualConnections: 90, profileImage: "00"),
    .init(id: 7, name: "John", position: "HR at Intel", mutualConnections: 34, profileImage: "01"),
    .init(id: 8, name: "Tiya", position: "purchase Engineer", mutualConnections: 50, profileImage: "02"),
    .init(id: 9, name: "Pheobe", position: "Product Manager", mutualConnections: 86, profileImage: "03"),
    .init(id: 10, name: "Monica", position: "Data Analyst", mutualConnections: 55, profileImage: "04"),
    .init(id: 11, name: "Joe", position: "Software Development intern", mutualConnections: 42, profileImage: "05"),
    .init(id: 12, name: "Charel", position: "SDE-II ", mutualConnections: 30, profileImage: "00"),
    .init(id: 13, name: "Chandler", position: "Mobile Developer", mutualConnections: 71, profileImage: "01"),
    .init(id: 14, name: "Max", position: "QA", mutualConnections: 95, profileImage: "02"),
    .init(id: 15, name: "Nancy", position: "Frontend Developer", mutualConnections: 18, profileImage: "03")

]


struct MyNetworksView: View {
    
    var body: some View {
        VStack{
            SearchBarView().background(.white)
                .padding(.horizontal, 10)
            
            HStack{
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle().fill(.gray.opacity(0.4))
                .frame(height: 10)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                
                Divider()
        
                // network invitation
                ForEach(networkData, id: \.id) { data in
                    InvitationView(Data: data)
                    Divider()
                }
            }
        }
    }
}

struct MyNetworksView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworksView()
    }
}
