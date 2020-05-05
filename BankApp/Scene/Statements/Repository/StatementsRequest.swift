//
//  StatementsRequest.swift
//  BankApp
//
//  Created by Gabriel Manzke on 14/04/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import Alamofire

struct StatementsRequest: BaseRequest {
    
    var url: String {
        return "https://bank-app-test.herokuapp.com/api/statements/\(userId)"
    }
    
    var parameters: Parameters = [:]
    
    var method: HTTPMethod = .get
    
    
    var userId: Int
    
    init(userId: Int) {
        self.userId = userId
    }
}
