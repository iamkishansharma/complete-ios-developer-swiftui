//
//  SplashScreenView.swift
//  LinkeddIn
//
//  Created by Kishan Kr Sharma on 1/4/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 1.0
    @State private var opacity = 0.8
    
    var body: some View {
        if isActive {
            // load main screen after isActive set to true
            ContentView()
        }else{
            
            ZStack{
                LinearGradient(colors: [.blue.opacity(0.3), Color("fg")], startPoint: .zero, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                    
                    Image("round-linkedin")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width/2.5, height:UIScreen.main.bounds.width/2.5, alignment: .bottom)

                    Spacer()
                    
                    Text("LinkeddIn")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(30)
                    
                    Text("build with ❤️ by")
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                    Text("Kishan Kr Sharma")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .frame(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.4, alignment: .bottom)
                
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.3)){
                        self.size = 1.3
                        self.opacity = 1.0
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
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
