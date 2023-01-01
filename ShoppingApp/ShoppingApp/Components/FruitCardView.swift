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
                    .font(.system(.title3))
                    .foregroundColor(.black)
                
                    Text("\(fruits.price) each")
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.6))
                Spacer()
            }
            .padding()
                .frame(width: 170, height: 150, alignment: .center)
                .background(Color(fruits.color))
                .cornerRadius(20)
                .padding()
            
            
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame( height: 95)
            }
            .offset(y:45)
        }
        .frame(width: 170, height: 150, alignment: .center)
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruits: images)
    }
}
