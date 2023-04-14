//
//  AddTodoView.swift
//  ToDoo
//
//  Created by Kishan Kr Sharma on 4/13/23.
//

import SwiftUI

struct AddTodoView: View {
    // dismiss view
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoViewModel: TodoViewModel
    @State var title: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something here...", text: $title)
                    .padding(.horizontal)
                    .frame(height:55.0)
                    .background(Color(hue: 0.621, saturation: 0.048, brightness: 0.916))
                    .cornerRadius(10.0)
                
                Button(action: saveButtonClicked,label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }.padding(16)
            
            
        }.navigationTitle("Add an item")
            .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonClicked(){
        if textIsValid(){
            todoViewModel.addItem(title: title)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsValid() -> Bool{
        if title.count < 3 {
            alertTitle = "Your todo item should contain at least 3 characters ☹️"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
