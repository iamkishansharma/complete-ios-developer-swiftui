//
//  ContentView.swift
//  SlotMachine
//
//  Created by Kishan Kr Sharma on 11/27/22.
//

import SwiftUI


enum Choise:Int, Identifiable{
    var id:Int {
        rawValue
    }
    case success, failure
}

struct ContentView: View {
    @State public var symbols = ["eating", "happy", "sleeping","scary", "love"]
    @State public var numbers = [0,1,2,3,4]
    @State public var counter = 0
    @State private var showingAlert:Choise?
    
    var body: some View {
        ZStack(alignment: .center){
            Image("sunshine")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 80){
                // heading
                HStack(alignment: .center, spacing: 10){
                    Image("fire").resizable().scaledToFit()
                        .shadow(color: .orange, radius:5, x:2, y:3)
                    Text("Slot Machine")
                        .font(.largeTitle).fontWeight(.bold).foregroundColor(.black).shadow(color: .orange, radius:5, x:2, y:3)
                    Image("fire").resizable().scaledToFit()
                        .shadow(color: .orange, radius:5, x:2, y:3)
                }.frame(width: .infinity, height: 60, alignment: .center)
                
                // elements
                VStack( spacing: 15){
                    Text("You have only \(numbers.count+1-counter) chances to win $5M")
                        .font(.body).foregroundColor(.black).shadow(color: .orange, radius:5, x:2, y:3)
                    
                    HStack(spacing: 35){
                        Hexagon()
                            .fill(.white)
                            .opacity(0.9)
                            .frame(width: 120, height: 120)
                            .overlay{
                                Image(symbols[numbers[0]]).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center )
                                    .shadow(color: .orange, radius: 4)
                            }
                        Hexagon()
                            .fill(.white)
                            .opacity(0.9)
                            .frame(width: 120, height: 120)
                            .overlay{
                                Image(symbols[numbers[1]]).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center )
                                    .shadow(color: .orange, radius: 4)
                            }
                    }
                    Hexagon()
                        .fill(.white)
                        .opacity(0.9)
                        .frame(width: 120, height: 120)
                        .overlay{
                            Image(symbols[numbers[2]]).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center )
                                .shadow(color: .orange, radius: 4)
                        }
                    HStack(spacing: 35){
                        Hexagon()
                            .fill(.white)
                            .opacity(0.9)
                            .frame(width: 120, height: 120)
                            .overlay{
                                Image(symbols[numbers[3]]).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center )
                                    .shadow(color: .orange, radius: 4)
                            }
                        Hexagon()
                            .fill(.white)
                            .opacity(0.9)
                            .frame(width: 120, height: 120)
                            .overlay{
                                Image(symbols[numbers[4]]).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center )
                                    .shadow(color: .orange, radius: 4)
                            }
                    }
                }
                
                // button
                Button(action: {
                    for i in Range(0...4) {
                        self.numbers[i] = Int.random(in:0...self.symbols.count-1)
                    }
                    // increase and reset
                    counter = counter + 1
                    
                    if self.numbers[0] == self.numbers[1] &&
                        self.numbers[1] == self.numbers[2] &&
                        self.numbers[2] == self.numbers[3] &&
                        self.numbers[3] == self.numbers[4]{
                        self.showingAlert = .success
                        counter = 0
                    }
                    
                    if(counter>5){
                        self.showingAlert = .failure
                        counter=0
                    }
                }, label:{
                    RoundedRectangle(cornerRadius: 100)
                        .fill(.orange)
                        .overlay{
                            Text("Spin").frame(width:200,height:50,alignment: .center).font(.title2)
                                .foregroundColor(.white)
                        }
                        .frame(width: 200, height: 50, alignment: .center)
                        .shadow(color: .gray, radius: 4, x:1, y:2)
                })
            }
            
            .alert(item: $showingAlert){ alert -> Alert in
                switch alert {
                case .success:
                    return Alert(title: Text("Yeah! you won"), message: Text("Born with the charm."), dismissButton: .cancel())
                    
                case .failure:
                    return Alert(title: Text("Ooops! "), message: Text("Better luck next time."), dismissButton: .cancel())
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
