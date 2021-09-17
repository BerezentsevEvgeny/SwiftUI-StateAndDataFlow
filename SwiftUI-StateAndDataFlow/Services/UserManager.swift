//
//  UserManager.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 13.09.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var user = User()
    
    var isValidName: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
  
}
