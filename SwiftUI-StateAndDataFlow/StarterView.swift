//
//  StarterView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

struct StarterView: View {
//    @EnvironmentObject var user: UserManager
    @AppStorage("isActive") var isActive = false //
    
    var body: some View {
        Group {
            if !isActive {
                RegisterView()
            } else {
                ContentView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
//            .environmentObject(UserManager())
    }
}
