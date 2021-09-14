//
//  RegisterView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

struct RegisterView: View {
//    @EnvironmentObject var user: UserManager
    
    @AppStorage("currentName") var currentName = ""
    @AppStorage("isActive") var isActive: Bool?
    
    @State private var name = ""
    var isValidName: Bool {
        name.count >= 3
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(isValidName ? .blue : .red)
            }
            Button(action: registerUser ) {
                HStack {
                  Image(systemName: "checkmark.circle")
                  Text("OK")
                }
            }
            .disabled(!isValidName)
        }
        .padding(.horizontal, 40)
    }
    
    private func registerUser() {
        if !name.isEmpty {
//            user.name = name
            currentName = name
//            user.isRegister.toggle()
            isActive = true
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            
    }
}
