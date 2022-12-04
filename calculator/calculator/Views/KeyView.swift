//
//  KeyView.swift
//  Calculator
//
//  Created by Kishan Kr Sharma on 12/3/22.
//

import SwiftUI

struct KeyView: View {
    
    @State var value: String = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    @State var changeColor = false
    @State var blur = 0
    
    let buttons:[[Keys]]=[
        [.clear, .negative, .percentage,.divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        VStack(){
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 350, height: 280)
                    .foregroundColor(changeColor ? Color("num").opacity(0.4): Color.pink.opacity(0.5))
                    .scaleEffect(changeColor ? 1.5 : 1.0)
                    .shadow(color: .red, radius: 10)
                    .animation(Animation.easeInOut.speed(0.18).repeatForever(), value: changeColor)
                    .onAppear(perform: {
                        // after animation
    //                    self.blur = 20
                        self.changeColor.toggle()
                        
                    })
                    .overlay(
                        Text(value)
                            .font(.system(size: 70))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                )
            }.padding()
            
        Text("Kishan's Calculator")
            ForEach(buttons, id: \.self){ row in
                HStack(spacing: 10){
                    ForEach(row, id: \.self){ element in
                        Button(action:{
                            self.didTap(button: element)
                        }, label: {
                             Text(element.rawValue)
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .frame(
                                    width: self.getWidth(element: element),
                                    height: self.getHeight(element: element)
                                )
                                .background(element.buttonColor)
                                .cornerRadius(self.getWidth(element: element)/2)
                                .shadow(color:
                                        .purple.opacity(0.5),
                                    radius: 10)
                        })
                    }
                }
            }
        }
        
    }
    
    func getWidth(element: Keys)-> CGFloat {
        if element == .zero{
            return (UIScreen.main.bounds.width - (4*10))/2
        }
        return (UIScreen.main.bounds.width - (5*10))/4
    }
    
    func getHeight(element: Keys)-> CGFloat {
        if element == .zero{
            return (UIScreen.main.bounds.width - (4*10))/4.5
        }
        return (UIScreen.main.bounds.width - (5*10))/4
    }
    
    func didTap(button: Keys){
        switch button{
        case .add, .subtract, .multiply, .divide, .equal:
            if button == .add {
                self.currentOperation = .add
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .subtract {
                self.currentOperation = .subtract
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .multiply {
                self.currentOperation = .multiply
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .divide {
                self.currentOperation = .divide
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .equal {
                self.changeColor.toggle()
                let runningValue: Int = self.runningNumber
                let currentValue: Int = Int(self.value) ?? 0
                
                switch self.currentOperation {
                case .add :
                    let a = runningValue + currentValue
                    self.value = "\(a)"
                case .subtract :
                    let a = runningValue - currentValue
                    self.value = "\(a)"
                case .multiply :
                    let a = runningValue * currentValue
                    self.value = "\(a)"
                case .divide :
                    let a = runningValue / currentValue
                    self.value = "\(a)"
                case .none: break
                }
            }
            if button != .equal{
                self.value = "0"
            }
            
            
        case .clear: self.value = "0"
        case .decimal, .negative, .percentage: break
        default:
            let number = button.rawValue
            if self.value == "0"{
                self.value = number
            }else{
                self.value = "\(self.value)\(number )"
            }
            
        }
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView()
    }
}
