//
//  LoginPresenter.swift
//  BankApp
//
//  Created by Gabriel Manzke on 28/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol {
    func presentData(data: UserAccount?)
        
}

class LoginPresenter: LoginPresenterProtocol {

    var viewController: LoginViewControllerProtocol?
    
    func presentData(data: UserAccount?) {
        viewController?.displayData(data)
        
    }
    
    func startLoading() {
        viewController?.startLoading()
    }
    func stopLoading() {
        viewController?.stopLoading()
    }
    
}
