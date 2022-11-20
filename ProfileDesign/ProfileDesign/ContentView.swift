//
//  ContentView.swift
//  ProfileDesign
//
//  Created by Kishan Kr Sharma on 11/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var profileIcons = ["phone", "network", "at", "message"]
    @State var status = "Dark Mode"
    var body: some View {
        ZStack{
            if(status == "Dark Mode"){
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
//                    .colorInvert()
            }else{
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .colorInvert()
            }
            
            
            VStack(alignment: .center, spacing: 10) {
                Image("kishan_pic")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 180, height: 180, alignment: .top)
                    .clipShape(Circle())
                    .shadow(color: .blue, radius: 10, x: 2, y: 3)
                
                Text("Kishan Kr Sharma")
                    .foregroundColor(.white)
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .shadow(radius: 8)
                
                Text("iOS Developer | Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(.body))
                
                HStack(alignment: .center, spacing: 20){
                    ForEach(profileIcons, id: \.self) { item in
                        Image(systemName: item)
                            .frame(width: 30, height: 30)
                            .padding(8)
                            .foregroundColor(.white)
                            .font(.system(.title3))
                            .background(status == "Dark Mode" ? Color.orange: Color.black)
                            .clipShape(Circle())
                            .shadow(color: .secondary, radius:10, x:2,y:3)
                            .onTapGesture {
                                print("\(item.uppercased()) Clicked!")
                            }
                    }
                    .padding(EdgeInsets.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                }
                HStack(alignment: .center, spacing: 50){
                    VStack{
                        Text("100").font(.system(.title3))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text("Posts").font(.system(.body))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("12K").font(.system(.title3))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text("Following").font(.system(.body))
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("2.5M").font(.system(.title3))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text("Followers").font(.system(.body))
                            .foregroundColor(.white)
                    }
                }
                .padding(10)
                .frame(width: 1000)
                .background(Color.secondary)

                
                Spacer()
                
                
                VStack(alignment: .leading, spacing: 10){
                    Text("More about me")
                        .foregroundColor(status == "Dark Mode" ? Color.black: Color.white)
                        .multilineTextAlignment(.leading)
                        .font(.system(.title3))
                        .fontWeight(.bold)
                        .padding(10)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                        .foregroundColor(status == "Dark Mode" ? Color.black: Color.white)
                        .font(.system(.body))
                        .lineLimit(6)
                        .frame(minWidth: 0, maxWidth: 350)
                        .multilineTextAlignment(.leading)
                        .truncationMode(.tail)
                        .padding(10)
                }
                
                VStack(alignment: .center, spacing: 10){
                    RoundedRectangle(cornerRadius: 100)
                        .frame(width: 200, height: 40)
                        .foregroundColor(status == "Dark Mode" ? Color.cyan: Color.orange)
                        .shadow(color: .secondary, radius: 10, x:2, y:3)
                        .overlay(
                            Text(status)
                                .foregroundColor(status == "Dark Mode" ? Color.white: Color.black)
                                .font(.system(.body))
                        )
                        .onTapGesture {
                            if(status == "Dark Mode"){
                                status = "Light Mode"
                            }else{
                                status = "Dark Mode"
                            }
                        }
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
