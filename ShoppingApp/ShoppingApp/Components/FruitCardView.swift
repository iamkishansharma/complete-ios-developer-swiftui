//
//  FruitCardView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/16/22.
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "1.32$", color: "1")

struct FruitCardView: View {
    
    let fruits: FruitModel
    var body: some View {
        ZStack{
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue.capitalized)
                    .fontWeight(.bold)
                    .font(.system(.title2))
                    .foregroundColor(.black)
                
                    Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.6))
                Spacer()
            }
            .padding()
                .frame(width: 175, height:150, alignment: .center)
                .background(Color(fruits.color))
                .cornerRadius(20)
                .padding()
                .shadow(radius: 8, x:2, y:3)
            
            
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }
            .offset(y:50)
            .shadow(radius: 10)
        }
        .frame(width: 175, height: 250, alignment: .center)
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruits: images)
    }
}
