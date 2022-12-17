//
//  TopSellingView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/17/22.
//

import SwiftUI

struct TopSellingView: View {
    let images:[FruitModel] = [
        .init(id: 0, title: .apple, image: "apple", price: "$1.99 each", color: "1"),
        .init(id: 1, title: .apricot, image: "apricot", price: "$2.04 each", color: "2"),
        .init(id: 2, title: .avocado, image: "avocado", price: "$1.04 each", color: "3"),
        .init(id: 3, title: .banana, image: "banana", price: "$2.06 each", color: "4"),
        .init(id: 4, title: .cherry, image: "cherry", price: "$3.00 each", color: "5"),
        .init(id: 5, title: .dragonfruit, image: "dragonfruit", price: "$1.04 each", color: "6"),
        .init(id: 6, title: .fig, image: "fig", price: "$2.00 each", color: "1"),
        .init(id: 7, title: .orange, image: "orange", price: "$1.00 each", color: "2"),
        .init(id: 8, title: .grapes, image: "grapes", price: "$2.54 each", color: "3"),
        .init(id: 9, title: .raspberry, image: "raspberry", price: "$3.04 each", color: "4"),
        .init(id: 10, title: .papaya, image: "papaya", price: "$1.04 each", color: "5"),
        .init(id: 11, title: .kiwi, image: "kiwi", price: "$2.78 each", color: "6"),
        .init(id: 12, title: .lemon, image: "lemon", price: "$2.04 each", color: "1"),
        .init(id: 13, title: .blackberry, image: "blackberry", price: "$2.04 each", color: "2"),
        .init(id: 14, title: .mango, image: "mango", price: "1.00 each", color: "3"),
        .init(id: 15, title: .muskmelon, image: "muskmelon", price: "$1.56 each", color: "4"),
        .init(id: 16, title: .pear, image: "pear", price: "$2.04 each", color: "5"),
        .init(id: 17, title: .pineapple, image: "pineapple", price: "$2.84 each", color: "6"),
        .init(id: 18, title: .plum, image: "plum", price: "$1.15 each", color: "1"),
        .init(id: 19, title: .strawberry, image: "strawbery", price: "$2.35 each", color: "2"),
        .init(id: 20, title: .watermelon, image: "watermelon", price: "$1.64 each", color: "3")]
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ScrollView(.horizontal, showsIndicators: true){
            HStack(alignment: .center, spacing: 20){
                ForEach(images, id: \.id){ post in
                    // pass DetailScreenView(fruit: post.title)
                    NavigationLink(destination: DetailScreenView(fruit: post.title) ){
                        FruitCardView(fruits: post)
                    }
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
