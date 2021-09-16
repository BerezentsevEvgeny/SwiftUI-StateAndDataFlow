//
//  RegisterView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager
    
//    @AppStorage("currentName") var currentName = ""
//    @AppStorage("isActive") var isActive: Bool?
    
//    @State private var name = ""
//    var isValidName: Bool {
//        name.count >= 3
//    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userManager.user.name )
                    .multilineTextAlignment(.center)
                Text("\(userManager.user.name.count)")
                    .foregroundColor(userManager.isValidName ? .blue : .red)
            }
            Button(action: registerUser ) {
                HStack {
                  Image(systemName: "checkmark.circle")
                  Text("OK")
                }
            }
            .disabled(userManager.isValidName)
        }
        .padding(.horizontal, 40)
    }
    
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            DataManger.shared.saveUser(user: userManager.user)
//            user.name = name
//            currentName = name
//            user.isRegister.toggle()
            
//            isActive = true
            userManager.user.isRegistred = true
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            
    }
}
