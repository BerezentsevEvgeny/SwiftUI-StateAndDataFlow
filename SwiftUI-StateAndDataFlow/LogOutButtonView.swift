//
//  LogOutButtonView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 14.09.2021.
//

import SwiftUI

struct LogOutButtonView: View {
//    @EnvironmentObject var user: UserManager
    @AppStorage("isActive") var isActive: Bool?
    
    var body: some View {
        Button(action: { isActive = false }) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
//            .environmentObject(UserManager())
    }
}
