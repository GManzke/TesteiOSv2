//
//  LoginViewController_Protocols.swift
//  BankApp
//
//  Created by Gabriel Manzke on 03/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

extension LoginViewController: LoginViewControllerProtocol {
    func displayData(_ data: UserAccount?) {
        LoginRouter.navigateToStatements(controller: self, data: data)
    }
    
    
}
