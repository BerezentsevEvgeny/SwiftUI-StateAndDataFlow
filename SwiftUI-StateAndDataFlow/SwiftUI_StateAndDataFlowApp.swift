//
//  SwiftUI_StateAndDataFlowApp.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

@main
struct SwiftUI_StateAndDataFlowApp: App {
    private let user = DataManger.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user)) // Передаем в окружение
        }
    }
}
