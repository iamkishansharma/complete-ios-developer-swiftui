//
//  DetailScreenView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/17/22.
//

import SwiftUI

// rounded shape
struct RoundedCornerShape: Shape{
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct CounterView: View{
    @State var count: Int = 0
    @State var showAlert: Bool = false
    
    var body: some View{
        HStack(spacing: 25){
            Button {
                if count != 0 {
                    count -= 1
                    self.showAlert = false
                }else{
                    self.showAlert = true
                }
                
            } label: {
                Image(systemName: "minus")
                    .font(.system(.title3)).fontWeight(.bold)
            }
            
            Text("\(count)")
                .font(.system(.title3))
                .fontWeight(.bold)
            
            Button {
                if count >= 10 {
                    self.showAlert = true
                }else{
                    count += 1
                    self.showAlert = false
                }
            }label: {
                Image(systemName: "plus")
                    .font(.system(.title3)).fontWeight(.bold)
            }
        }
        .frame(width: 120, height: 25)
        .alert(isPresented: $showAlert){
            Alert(title: Text("Alert"), message: count >= 10 ?Text("Bro, You can order only 10 items at once.") : Text("Bro, You can not order below 0.") , dismissButton: .cancel())
            
        }
        
        
    }
}

struct DetailScreenView: View {
    @State var fruit: fruitsTitle
    var body: some View {
        
        VStack(alignment: .leading, spacing: 25){
            
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(
                    corners: [.bottomLeft, .bottomRight], radius: 30))
                .frame( alignment: .top)
                .edgesIgnoringSafeArea(.top)
                .shadow(color: .gray, radius: 5, x:5, y:5)
                .overlay{
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
//                                            .offset(y: UIScreen.main.bounds.height/2)
                        .shadow(color: .gray, radius: 5, x:5, y:5)
                }
            
            Spacer()
            
            Text("\(fruit.rawValue) - Medium")
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: 8).fill(Color("bgColor").opacity(0.15))
                    .overlay{
                        Image(systemName: "hourglass")
                            .font(.system(.largeTitle))
                    }.frame(width: 60, height: 60)
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("20-30 min")
                }
            }.padding(.horizontal)
            
            HStack{
                Text("1.34$")
                    .font(.system(.title)).fontWeight(.bold)
                Text("/pc")
                Spacer()
                
                
                CounterView()
                    .padding(8)
                    .background(Color("bgColor").opacity(0.15))
                    .cornerRadius(8)
                
            }.padding(.horizontal)
            
            // button to add to cart
            HStack{
                Image("bg")
                    .resizable()
                    .frame(width: 300, height: 50)
                    .cornerRadius(8)
                    .overlay{
                        HStack{
                            Text("Add to cart")
                                .fontWeight(.bold)
                                .font(.system(.title2))
                            
                            Image(systemName: "cart")
                                .fontWeight(.bold)
                                .font(.system(.title2))
                        }
                    }
                
                Spacer()
                
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 30, height: 25)
                    .fontWeight(.bold)
                    .padding(10)
                    .background(Color("bgColor").opacity(0.15))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
    }
}

struct DetailScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreenView(fruit: .apple)
    }
}
