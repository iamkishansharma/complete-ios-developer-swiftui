//
//  StoreDetailsView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 1/1/23.
//

import SwiftUI

struct StoreDetailsView: View {
    @State var places: PlacesModel
    var body: some View {
        VStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .overlay(
                    Image(places.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                )
                .frame( height: 300)
            
            VStack(alignment: .leading){
                Text("\(places.name)").font(.title)
                    .font(.system(.title2))
                Text("\(places.time)")
                    .font(.system(.title3))
                    .foregroundColor(.gray)
                Text("\(places.rating)")
            }
            Spacer()
                
        }.padding(.horizontal).background(Color("6").opacity(0.7))
        
    }
}

struct StoreDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailsView(places: .init(id: 1, name: "Example Store", time: "09:00 AM - 05:90 PM", rating: "4.8", image: "location"))
    }
}
