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
                .foregroundColor(.gray.opacity(0.2))
                .frame( height: 300)
                .overlay(
                    Image(places.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                )
            VStack(alignment: .leading){
                Text("\(places.name)").font(.title)
                    .font(.system(.title2))
                Text("\(places.time)")
                    .font(.system(.title3))
                    .foregroundColor(.gray)
                Text("\(places.rating)")
            }
            Spacer()
                
        }
        .padding(.horizontal)
        
    }
}

struct StoreDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailsView(places: .init(id: 1, name: "Example Store", time: "09:00 AM - 05:90 PM", rating: "4.8", image: "location"))
    }
}
