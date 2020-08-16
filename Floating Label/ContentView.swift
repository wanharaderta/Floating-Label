//
//  ContentView.swift
//  Floating Label
//
//  Created by Wanhar on 16/08/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName: String
    @State var lastName: String
    
    var body: some View {
        return VStack(alignment:.center){
            ZStack(alignment:.leading) {
                Text("First Name")
                    .foregroundColor($firstName.wrappedValue.isEmpty ? Color(.placeholderText) : .accentColor)
                    .offset(y: $firstName.wrappedValue.isEmpty ? 0 : -25)
                    .scaleEffect($firstName.wrappedValue.isEmpty ? 1 : 0.75, anchor: .leading)
                TextField("",text: $firstName)
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 12)
            ZStack(alignment:.leading) {
                Text("Last Name")
                    .foregroundColor($lastName.wrappedValue.isEmpty ? Color(.placeholderText) : .accentColor)
                    .offset(y: $lastName.wrappedValue.isEmpty ? 0 : -25)
                    .scaleEffect($lastName.wrappedValue.isEmpty ? 1 : 0.75, anchor: .leading)
                TextField("",text: $lastName)
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 12)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(firstName: "", lastName: "")
    }
}
