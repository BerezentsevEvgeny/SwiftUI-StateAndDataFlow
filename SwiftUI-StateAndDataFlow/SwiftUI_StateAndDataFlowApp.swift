//
//  SwiftUI_StateAndDataFlowApp.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

@main
struct SwiftUI_StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager() // Можно передать в нужную точку приложения
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager) // Передаем в окружение
        }
    }
}
