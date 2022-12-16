//
//  ImageData.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/16/22.
//

import Foundation


struct FruitModel{
    var id: Int
    var title: fruitsTitle
    var image: String
    var price: String
    var color: String
}

enum fruitsTitle: String{
    case apple, apricoat, avocado, banana, blackberry, cherry, dragonfruit,
         fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear,
         pineapple, plum, rasberry, strawberry, watermelon
}
