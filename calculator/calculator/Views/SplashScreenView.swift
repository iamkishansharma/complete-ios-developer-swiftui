//
//  SplashScreenView.swift
//  Calculator
//
//  Created by Kishan Kr Sharma on 12/4/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    var body: some View {
        if isActive{
            ContentView()
        }else{
            ZStack{
                LinearGradient(colors: [.orange.opacity(0.5), .purple.opacity(0.6)], startPoint: .zero, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("calculator-img")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Text("Calculator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.0)){
                        self.size = 1.1
                        self.opacity = 1.0
                    }
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.9){
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
