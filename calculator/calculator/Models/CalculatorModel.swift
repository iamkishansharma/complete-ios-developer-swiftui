//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Kishan Kr Sharma on 12/3/22.
//

import SwiftUI
import Foundation

enum Keys:String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "÷"
    case percentage = "%"
    case decimal = "."
    case equal = "="
    case negative = "-/+"
    case clear = "AC"
    
    var buttonColor:Color{
        switch self{
        case .add, .subtract, .divide, .multiply, .equal: return Color("Hoperator")
        case .clear, .negative, .percentage: return Color("num")
        default : return Color("Voperator")
        }
    }
}


enum Operation{
    case add, subtract, multiply, divide, none
}
