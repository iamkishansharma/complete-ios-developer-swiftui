//
//  NearYouScreenView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/23/22.
//

import SwiftUI

struct NearYouScreenView: View {
    let dataArray: [PlacesModel] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ForEach(dataArray, id: \.id){ post in
                NavigationLink(destination: StoreDetailsView(places: post)){
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Image(post.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                        VStack(alignment: .leading){
                            Text("\(post.name)")
                                .font(.system(.headline))
                                .foregroundColor(.black)
                            Text("\(post.time)")
                                .font(.system(.subheadline))
                                .foregroundColor(.gray)
                            Text("\(post.rating)")
                                .foregroundColor(.gray)
                        }
                        
                    }.frame(width: UIScreen.main.bounds.width-20, alignment: .leading)
                        .background(.white.opacity(0.3))
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct NearYouScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NearYouScreenView()
    }
}
