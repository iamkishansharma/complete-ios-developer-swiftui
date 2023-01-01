//
//  TopSellingView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/17/22.
//

import SwiftUI

struct TopSellingView: View {
    let images:[FruitModel] = [
        .init(id: 0, title: .apple, image: "apple", price: "$1.99", color: "1"),
        .init(id: 1, title: .apricot, image: "apricot", price: "$2.04", color: "2"),
        .init(id: 2, title: .avocado, image: "avocado", price: "$1.04", color: "3"),
        .init(id: 3, title: .banana, image: "banana", price: "$2.06", color: "4"),
        .init(id: 4, title: .cherry, image: "cherry", price: "$3.00", color: "5"),
        .init(id: 5, title: .dragonfruit, image: "dragonfruit", price: "$1.04", color: "6"),
        .init(id: 6, title: .fig, image: "fig", price: "$2.00", color: "1"),
        .init(id: 7, title: .orange, image: "orange", price: "$1.00", color: "2"),
        .init(id: 8, title: .grapes, image: "grapes", price: "$2.54", color: "3"),
        .init(id: 9, title: .raspberry, image: "raspberry", price: "$3.04", color: "4"),
        .init(id: 10, title: .papaya, image: "papaya", price: "$1.04", color: "5"),
        .init(id: 11, title: .kiwi, image: "kiwi", price: "$2.78", color: "6"),
        .init(id: 12, title: .lemon, image: "lemon", price: "$2.04", color: "1"),
        .init(id: 13, title: .blackberry, image: "blackberry", price: "$2.04", color: "2"),
        .init(id: 14, title: .mango, image: "mango", price: "1.00 eamch", color: "3"),
        .init(id: 15, title: .muskmelon, image: "muskmelon", price: "$1.56", color: "4"),
        .init(id: 16, title: .pear, image: "pear", price: "$2.04", color: "5"),
        .init(id: 17, title: .pineapple, image: "pineapple", price: "$2.84", color: "6"),
        .init(id: 18, title: .plum, image: "plum", price: "$1.15", color: "1"),
        .init(id: 19, title: .strawberry, image: "strawbery", price: "$2.35", color: "2"),
        .init(id: 20, title: .watermelon, image: "watermelon", price: "$1.64", color: "3")]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true){
            HStack(alignment: .center, spacing: 20){
                ForEach(images, id: \.id){ post in
                    NavigationLink(destination: DetailScreenView(fruit: post.title)){
                        FruitCardView(fruits: post)
                            .shadow(radius: 5, x:2, y:3)
                    }.frame(height: 180)
                        .padding(.bottom, 10)
                }
            }.padding(.leading, 10)
        }
    }
}

struct TopSellingView_Previews: PreviewProvider {
    static var previews: some View {
        TopSellingView()
    }
}
