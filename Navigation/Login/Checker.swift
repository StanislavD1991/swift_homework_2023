//
//  Checker.swift
//  Navigation
//
//  Created by Stanislav on 13.09.2023.
//
//shift cmd o - search file
//shift cmd f - search string

import UIKit

struct LoginInspector: LoginViewControllerDelegate {
    func check(login: String, password: String) -> Bool {
        return Checker.shared.check(login: login, password: password)
    }
}

struct MyLoginFactory: LoginFactory {
    func makeLoginInspector() -> LoginInspector {
        return LoginInspector()
    }   
}

protocol LoginViewControllerDelegate {
    func check(login: String, password: String) -> Bool
}

protocol LoginFactory {
    func makeLoginInspector() -> LoginInspector
}

class Checker {
    static let shared = Checker()
    
    private init() {        
    }
    
    private let login = "admin"
    private let password = "12345"
    
    func check(login: String, password: String) -> Bool {
        return self.login == login && self.password == password
    }
}
