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
    
    func getData(model: LoginModel) {
        
        BankAppAPI.requestLoginService(data: model) { response in
            print(response.userAccount?.name)
        }
    }
}
