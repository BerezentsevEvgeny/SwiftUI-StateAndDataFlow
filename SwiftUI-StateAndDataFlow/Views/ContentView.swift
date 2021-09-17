//
//  ContentView.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userManager: UserManager
    @StateObject private var timer = TimerCounter() // Работает с классом
    
    var body: some View {
        VStack {
            Text("Hello, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 150)
            Spacer()
            
            ButtonView(timer: timer)
            Spacer()
            LogOutButtonView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

