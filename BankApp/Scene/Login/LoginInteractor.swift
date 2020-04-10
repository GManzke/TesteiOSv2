//
//  File.swift
//  BankApp
//
//  Created by Gabriel Manzke on 28/03/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

protocol LoginInteractorProtocol {
    func getData(model: LoginModel)
}

class LoginInteractor: LoginInteractorProtocol {
    
    var service: BankAppAPIProtocol = BankAppAPI()
    var presenter: LoginPresenterProtocol?
    
    func getData(model: LoginModel) {
        
        let request = LoginRequest(data: model)
        service.requestLoginService(data: request) { (response: UserAccountModel) in
            self.presenter?.presentData(data: response.userAccount)
        }
    }
}
