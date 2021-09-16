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
        guard let userData = userData else { return User(name: "Sample", isRegistred: false) }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        guard let user = user else { return User(name: "Sample", isRegistred: false) }
        return user
    }
    
    func deleteUser() {
        
    }
    
    
    
}


