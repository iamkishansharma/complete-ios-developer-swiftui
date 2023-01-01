//
//  HomeScreenView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/15/22.
//

import SwiftUI

struct HomeScreenView: View {
    @State var searchedFor: String = ""
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading, spacing: 10 ){
                            HStack{
                                Image(systemName: "line.3.horizontal")
                                Spacer()
                                Image(systemName: "cart.badge.plus")
                            }
                            .font(.system(.title)).padding(.horizontal)
                
                            Text("Fresh Fruits")
                                .font(.title)
                                .fontWeight(.bold).padding(.horizontal)
                
                Text("Find fresh fruits that you want.").padding(.horizontal)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray.opacity(0.2))
                    .overlay{
                        HStack{
                            Image(systemName: "magnifyingglass")
                            TextField("Search in fruits", text: $searchedFor)
                                .foregroundColor(.black)
                            Spacer()
                        }.padding()
                            .foregroundColor(.gray)
                            .font(.title3)
                        
                    }.frame(height: 50, alignment: .leading)
                    .padding(.horizontal)
                
                
                Text("Top Selling").font(.title2).fontWeight(.bold).padding(.horizontal)
                TopSellingView()
                
                Text("Near You").font(.title2).fontWeight(.bold).padding(.horizontal)
                NearYouScreenView().frame(width: UIScreen.main.bounds.width)
            }
        }.navigationTitle("Fresh Fruits")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
