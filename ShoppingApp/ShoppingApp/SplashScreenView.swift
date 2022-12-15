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
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            // load main screen after isActive set to true
            OnBoardingScreen()
        }else{
            ZStack{
                LinearGradient(colors: [Color("6"), .green.opacity(0.5)], startPoint: .zero, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("shopping-girl")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.height/2.7)
                    
                    Text("Shopping Center")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .purple, radius: 10)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.4)){
                        self.size = 1.1
                        self.opacity = 1.0
                    }
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
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
