//
//  DataManager.swift
//  SwiftUI-StateAndDataFlow
//
//  Created by Евгений Березенцев on 15.09.2021.
//

import Foundation
import SwiftUI

class DataManger {
    
    static let shared = DataManger()
    
    private init() {}
    
    @AppStorage("user") private var userData: Data?
    
    func saveUser(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User()}
        return user
    }
    
    func deleteUser(userManager: UserManager) {
        userManager.user.isRegistred = false
        userData = nil
        userManager.user.name = ""
    }
    
    
    
}


