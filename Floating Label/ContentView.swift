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
            Text("Floating Labels")
                .font(.largeTitle)
            
            ZStack(alignment:.leading) {
                Text("First Name")
                    .foregroundColor($firstName.wrappedValue.isEmpty ? Color(.placeholderText) : .accentColor)
                    .offset(y: $firstName.wrappedValue.isEmpty ? 0 : -30)
                    .scaleEffect($firstName.wrappedValue.isEmpty ? 1 : 0.7, anchor: .leading)
                TextField("",text: $firstName)
                    .padding(.top, 12)
            }.padding([.leading,.trailing], 12)
            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.2))
            
            Divider()
                .padding([.leading,.trailing], 12)
            
            ZStack(alignment:.leading) {
                Text("Last Name")
                    .foregroundColor($lastName.wrappedValue.isEmpty ? Color(.placeholderText) : .accentColor)
                    .offset(y: $lastName.wrappedValue.isEmpty ? 0 : -30)
                    .scaleEffect($lastName.wrappedValue.isEmpty ? 1 : 0.7, anchor: .leading)
                TextField("",text: $lastName)
                    .padding(.top, 12)
            }.padding([.leading,.trailing], 12)
            .padding(.top, 20)
            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.2))
            
            Divider()
                .padding([.leading,.trailing], 12)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(firstName: "", lastName: "")
    }
}
