//
//  RegisterView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager
        
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
            .disabled(!userManager.isValidName)
        }
        .padding(.horizontal, 40)
    }
    
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistred.toggle()
            DataManger.shared.saveUser(user: userManager.user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
            
    }
}
