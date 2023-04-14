//
//  EmptyListView.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import SwiftUI

struct EmptyListView: View {
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 20.0){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Be more productive and add some todos to finish them on time!")
                    .padding(.bottom, 20.0)
                
                NavigationLink(destination: AddTodoView(), label: {
                    Text("Add something 😁")
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color("NewColor") : Color.accentColor)
                        .cornerRadius(10.0)
                }).padding(.horizontal, animate ? 5 : 60)
                    .shadow(
                        color: animate ? Color("NewColor").opacity(0.7):
                            Color.accentColor.opacity(0.7),
                        radius: animate ? 30:50,
                        x:0, y: animate ? 20 : 10)
                    .offset(y: animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40.0)
            .onAppear(perform: addAnimation)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation(){
        guard !animate else {
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ){
                animate.toggle()
            }
        }
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
