//
//  OnBoardingScreen.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/15/22.
//

import SwiftUI

struct OnBoardingScreen: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Order you favourite fruits.")
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .opacity(0.9)
                    
                    Text("Direct from farmers, because you deserve a better life & health.")
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .opacity(0.7)
                }.padding(.horizontal, 35)
                
                Spacer()
                
                NavigationLink(destination: HomeScreenView()){
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 300, height: 60)
                        .overlay{
                            HStack(alignment: .center, spacing: 10){
                                Text("Next").font(.system(.title2))
                                    .fontWeight(.bold)
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                                    .font(.system(.title3))
                                    .fontWeight(.bold)
                            }.foregroundColor(.black)
                        }
                    
                    
                }
                .shadow(color: .gray.opacity(0.2), radius: 8)
                Spacer()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.automatic)
            
        }
    }
}

struct OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreen()
    }
}
