//
//  SplashScreenView.swift
//  ShoppingApp
//
//  Created by Kishan Kr Sharma on 12/6/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.8
    
    var body: some View {
        if isActive {
            // load main screen after isActive set to true
            OnBoardingScreen()
        }else{
            
            ZStack{
                Image("img")
                    .resizable().scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Fresh Fruits")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .padding(30)
                    Text("powered by")
                        .font(.system(size: 10))
                    Text("Shopping Center Inc.")
                        .font(.system(size: 12))
                        .fontWeight(.bold).foregroundColor(.black)
                }
                .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.7, alignment: .bottom)
                
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeInOut(duration: 1.5)){
                    self.size = 1.5
                    self.opacity = 1.0
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
