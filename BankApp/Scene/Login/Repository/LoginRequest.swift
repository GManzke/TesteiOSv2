//
//  LoginRequest.swift
//  BankApp
//
//  Created by Gabriel Manzke on 07/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import Alamofire

struct LoginRequest: BaseRequest {
    

    var user: String
    var password: String
    
    init(data: LoginModel) {
        self.user = data.user
        self.password = data.password
    }
    
    var url: String = "https://bank-app-test.herokuapp.com/api/login"
    
    var parameters: Parameters {
        return ["user": user, "password": password]
    }
    
    var method: HTTPMethod = .post
    
}
