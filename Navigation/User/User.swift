//
//  User.swift
//  Navigation
//
//  Created by Stanislav on 02.09.2023.
//

import UIKit

protocol UserService {
    func getUser(username: String) -> User?
}

class User {
    var login: String
    var fullname: String
    var avatar: UIImage
    var status: String
    
    init(
        login: String,
        fullname: String,
        avatar: UIImage,
        status: String
    ) {
        self.login = login
        self.fullname = fullname
        self.avatar = avatar
        self.status = status
    }
}

class CurrentUserService: UserService {
    let currentUser: User
    
    init(user: User) {
        self.currentUser = user
    }
    
    func getUser(username login: String) -> User? {
        if login == currentUser.login {
            return currentUser
        }
        else {
            return nil
        }
    }
}

class TestUserService: UserService {
    var testUser: User
    
    init(user: User) {
        self.testUser = user
    }
    
    func getUser(username login: String) -> User? {
        testUser = User(login: "test2", fullname: "Test User 2", avatar: UIImage(named: "ava")!, status: "Online")
        return testUser
    }
}

